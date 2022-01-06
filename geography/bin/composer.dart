import 'dart:io';
import 'dart:convert';

import 'package:diacritic/diacritic.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;
import 'package:archive/archive.dart' as zip;
import 'package:geography/src/base.dart' as bases;

class Composer {
  const Composer();

  /// Handles reviving JSON GeoData and translating some attribute value types.
  static Object? _reviver(Object? key, Object? value) {
    switch (key) {
      case "latitude":
      case "longitude":
        {
          if (value == null) return double.maxFinite;
          var numVal = num.tryParse(value.toString());
          if (numVal == null) {
            print("GeoData Failure: failed to convert '$value' into a number.");
          }
          return numVal ?? 0;
        }
      default:
        return value is String ? value.trim() : value;
    }
  }

  static String _fileHeader(String tag,
      [String basePath = 'src/', List<String> imports = const []]) {
    return """
/// Access to known $tag and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '${basePath}base.dart';
${imports.map((e) => "import '$e';").join('\n')}
""";
  }

  /// Returns a string of `null` or `"$value"` as appropriate
  static String _qon(String? value) {
    return value == null ? "null" : "\"${value.replaceAll(r'$', "\\\$")}\"";
  }

  static String _lts<T extends bases.GeoObject>(List<T> geos, {int tabs = 1}) {
    return geos.isEmpty
        ? "[]"
        : [
            "[",
            geos.map((s) => _sourceCodeFor(s, tabs: tabs + 1)).join(",\n"),
            "]".indent(tabs)
          ].join("\n");
  }

  static String _ltsr<T extends bases.GeoLocation>(List<T> geos,
      {String? prefix, int tabs = 1}) {
    return geos.isEmpty
        ? "[]"
        : [
            "[",
            geos.map((s) {
              String? type = s is bases.Region ? s.type : null;
              return "${prefix?.padRight(prefix.length + 1)}${s.name}"
                  .toCamelCase(clarifier: type)
                  .indent(tabs + 1);
            }).join(",\n"),
            "]".indent(tabs)
          ].join("\n");
  }

  static String _mts<T>(Map<String, T> geos, {int tabs = 1}) {
    return geos.isEmpty
        ? "{}"
        : [
            "{",
            geos.entries.fold<List<String>>(
                [],
                (p, c) => [
                      ...p,
                      "\"${c.key}\": ${_qon(c.value.toString())}"
                          .indent(tabs + 1)
                    ]).join(",\n"),
            "}".indent(tabs)
          ].join("\n");
  }

  static String _ltmr<T extends bases.GeoLocation>(Iterable<T> geos,
      {int tabs = 1, String? prefix}) {
    return geos.isEmpty
        ? "{}"
        : [
            "{",
            geos.fold<List<String>>([], (p, c) {
              String? type = c is bases.Region ? c.type : null;
              return [
                ...p,
                "${c.id}: ${"${prefix?.padRight(prefix.length + 1)}${c.name}".toCamelCase(clarifier: type)}"
                    .indent(tabs + 1)
              ];
            }).join(",\n"),
            "}".indent(tabs)
          ].join("\n");
  }

  static String _sourceCodeFor<T extends bases.GeoObject>(T geo,
      {int? parentId, String? prefix, int tabs = 1}) {
    if (geo is bases.Country) {
      return [
        "Country(id: ${geo.id}, name: ${_qon(geo.name)}, longitude: ${geo.longitude},"
            .indent(tabs),
        "latitude: ${geo.latitude}, capital: ${_qon(geo.capital)},"
            .indent(tabs + 4),
        "currency: ${_qon(geo.currency)}, currencySymbol: ${_qon(geo.currencySymbol)},"
            .indent(tabs + 4),
        "emoji: ${_qon(geo.emoji)}, emojiU: ${_qon(geo.emojiU)},"
            .indent(tabs + 4),
        "iso2: ${_qon(geo.iso2)}, iso3: ${_qon(geo.iso3)},".indent(tabs + 4),
        "native: ${_qon(geo.native)}, numericCode: ${_qon(geo.numericCode)},"
            .indent(tabs + 4),
        "phoneCode: ${_qon(geo.phoneCode)}, region: ${_qon(geo.region)},"
            .indent(tabs + 4),
        "subregion: ${_qon(geo.subregion)}, tld: ${_qon(geo.tld)},"
            .indent(tabs + 4),
        "states: ${_ltsr(geo.states, tabs: tabs + 4, prefix: geo.name)},"
            .indent(tabs + 4),
        "timezones: ${_lts(geo.timezones, tabs: tabs + 4)},".indent(tabs + 4),
        "translations: ${_mts(geo.translations, tabs: tabs + 4)})"
            .indent(tabs + 4)
      ].join("\n");
    } else if (geo is bases.Region) {
      return [
        "Region(id: ${geo.id}, parentId: ${parentId ?? geo.parentId}, longitude: ${geo.longitude}, latitude: ${geo.latitude},"
            .indent(tabs),
        "name: ${_qon(geo.name)}, type: ${_qon(geo.type)}, stateCode: ${_qon(geo.stateCode)},"
            .indent(tabs + 4),
        "cities: ${_ltsr(geo.cities, tabs: tabs + 4, prefix: prefix)})"
            .indent(tabs + 4)
      ].join("\n");
    } else if (geo is bases.City) {
      return "City(id: ${geo.id}, parentId: ${parentId ?? geo.parentId}, name: ${_qon(geo.name)}, longitude: ${geo.longitude}, latitude: ${geo.latitude})"
          .indent(tabs);
    } else if (geo is bases.Timezone) {
      return [
        "Timezone(abbreviation: ${_qon(geo.abbreviation)}, gmtOffset: ${geo.gmtOffset}, gmtOffsetName: ${_qon(geo.gmtOffsetName)},"
            .indent(tabs),
        "tzName: ${_qon(geo.tzName)}, zoneName: ${_qon(geo.zoneName)})"
            .indent(tabs + 4)
      ].join("\n");
    }

    return "null /** No Code for '${geo.runtimeType.toString()}' **/";
    // throw Exception("The type '${geo.runtimeType.toString()}' is unsupported.");
  }

  static Future<void> compose() async {
    Finisher finisher;
    var client = http.Client();
    const repoOwner = "dr5hn";
    const repoName = "countries-states-cities-database";
    const targetFileName = "countries+states+cities.json";
    const initialPath = "/repos/$repoOwner/$repoName/releases/latest";
    var releasesUrl = Uri.https("api.github.com", initialPath);

    finisher = printAction("👇 Acquiring remote data");
    var zipballUrl = await client
        .get(releasesUrl)
        .then((res) => jsonDecode(res.body)["zipball_url"]?.toString());

    if (zipballUrl == null || zipballUrl.isEmpty) {
      throw Exception("Failed to obtain zipball from geo-data releases.");
    }
    finisher();

    finisher = printAction("📦 Extracting compressed data");
    var countries = await client
        .get(Uri.parse(zipballUrl))
        .then((res) {
          var archive = zip.ZipDecoder().decodeBytes(res.bodyBytes);
          var fileCount = archive.files.length;
          var index = 0;
          for (var file in archive.files) {
            index++;
            finisher(progress: index, total: fileCount, status: file.name);
            if (file.isFile && file.name.endsWith(targetFileName)) {
              return file.content as List<int>;
            }
          }
          return List<int>.empty();
        })
        .then((bytes) => utf8.decode(bytes))
        .then((value) => jsonDecode(value, reviver: _reviver) as List<dynamic>)
        .then((value) => value
            .map((e) => bases.Country.fromJson(e as Map<String, dynamic>))
            .toList());
    finisher();

    var scriptDir = Platform.script.path;
    var abnormalPath = path.join(scriptDir, "../../../../../lib/");
    var basePath = path.canonicalize(abnormalPath);

    _writeCountries(basePath, countries);
  }

  static void _writeCountries(
      String basePath, List<bases.Country> countries) async {
    var countryCodeMap = <String, ObjectMapMeta>{};
    var regionsCodeMap = <String, ObjectMapMeta>{};
    var countriesDir = path.join(basePath, "src", "countries");
    if (!Directory(countriesDir).existsSync()) {
      Directory(countriesDir).createSync(recursive: true);
    }

    var totalProg = 0;
    var totalGoal = countries.fold<int>(0, (p, c) => p + c.states.length + 1);
    var finisher = printAction("📓 Composing data-as-code files");

    countries.sort((a, b) => a.id - b.id);
    await Future.wait(countries
        .map((country) => Future<void>(() async {
              var hasStates = country.states.isNotEmpty;
              if (hasStates) {
                var regionCodeMap = await _writeStates(country, countriesDir, (
                    {progress, status}) {
                  totalProg += progress ?? 0;
                  finisher(
                      progress: totalProg,
                      total: totalGoal,
                      status: "${country.name} - $status");
                });
                regionsCodeMap.addAll(regionCodeMap);
              }

              var countryCodeName = country.name.toCamelCase();
              var countryFilename = country.name.toFilename();
              var countryFilePath =
                  path.join(countriesDir, "$countryFilename.dart");
              File file = File(countryFilePath);
              var writer = file.openWrite(mode: FileMode.writeOnly)
                ..writeln(_fileHeader("geographies in ${country.name}", '../',
                    hasStates ? ['${countryFilename}_states.dart'] : []))
                ..writeln(
                    "/// The country of `${country.emoji} ${country.name}`, and its ${country.states.length} states")
                ..writeln(
                    "const Country $countryCodeName = ${_sourceCodeFor(country, tabs: 1).trim()};");
              await writer.flush();
              await writer.close();
              countryCodeMap[countryCodeName] =
                  ObjectMapMeta(country.id, countryFilePath, country.name);

              totalProg++;
              finisher(
                  progress: totalProg, total: totalGoal, status: country.name);
            }))
        .toList(growable: false));
    finisher();

    finisher = printAction("📝 Creating barrel files");
    finisher(progress: 0, total: 2, status: "Countries");
    await _writeBarrel(countriesDir, countryCodeMap, "Country", "countries");
    finisher(progress: 1, total: 2, status: "Regions");
    await _writeBarrel(countriesDir, regionsCodeMap, "Region", "states");
    finisher();
  }

  static Future<Map<String, ObjectMapMeta>> _writeStates(
      bases.Country country, String outDir, FinishAppender finisher) async {
    var regionsCodeMap = <String, ObjectMapMeta>{};
    var statesFilename = "${country.name.toFilename()}_states.dart";
    var citiesFilename = "${country.name.toFilename()}_cities.dart";
    var statesFilePath = path.join(outDir, statesFilename);
    var hasCities =
        country.states.firstWhereOrNull((s) => s.cities.isNotEmpty) != null;
    File file = File(statesFilePath);
    var writer = file.openWrite(mode: FileMode.writeOnly)
      ..writeln(_fileHeader("geographies in ${country.name}", '../',
          (hasCities ? [citiesFilename] : [])))
      ..writeln(
          "/// The ${country.states.length} regions of `${country.emoji} ${country.name}`");
    for (var state in country.states) {
      if (hasCities) await _writeCities(country, outDir);
      var stateCodeName =
          "${country.name} ${state.name}".toCamelCase(clarifier: state.type);
      writer.writeln(
          "const Region $stateCodeName = ${_sourceCodeFor(state, tabs: 1, prefix: stateCodeName, parentId: country.id).trim()};");
      regionsCodeMap[stateCodeName] =
          ObjectMapMeta(state.id, statesFilePath, state.name);
      finisher(progress: 1, status: state.name);
    }

    var sharedPrefix = country.name.toCamelCase();
    writer.writeln(
        "\nconst ${sharedPrefix}States = <int, Region>${_ltmr(country.states, prefix: sharedPrefix)};");

    await writer.flush();
    await writer.close();

    return regionsCodeMap;
  }

  static Future<void> _writeCities(
      bases.Country country, String countriesDir) async {
    var countryCodeName = country.name.toCamelCase();
    var citiesFilename = "${country.name.toFilename()}_cities";
    var citiesFilePath = path.join(countriesDir, "$citiesFilename.dart");
    var citiesCount =
        country.states.map((e) => e.cities.length).reduce((a, b) => a + b);

    File file = File(citiesFilePath);
    var writer = file.openWrite(mode: FileMode.writeOnly)
      ..writeln(_fileHeader("cities in ${country.name}", '../'))
      ..writeln(
          "/// The $citiesCount cities of `${country.emoji} ${country.name}`");

    var cityMap = <int, String>{};
    for (var region in country.states) {
      var sharedPrefix =
          "${country.name} ${region.name}".toCamelCase(clarifier: region.type);
      for (var city in region.cities) {
        var cityCodeName =
            "${sharedPrefix.padRight(sharedPrefix.length + 1)}${city.name}"
                .toCamelCase();
        var dupCount = cityMap.values.where((v) => v == cityCodeName).length;
        cityCodeName = dupCount > 0 ? "$cityCodeName$dupCount" : cityCodeName;

        writer.writeln(
            "const City $cityCodeName = ${_sourceCodeFor(city, tabs: 1, prefix: sharedPrefix, parentId: region.id).trim()};");

        cityMap[city.id] = cityCodeName;
      }
    }

    var cities = cityMap.keys
        .sorted((a, b) => a - b)
        .map((k) => "$k: ${cityMap[k]}".indent(1))
        .join(',\n');
    writer.writeln(
        "\nconst ${countryCodeName}Cities = <int, City>{\n$cities\n};");

    await writer.flush();
    await writer.close();
  }

  static Future<void> _writeBarrel(
      String outDir,
      Map<String, ObjectMapMeta> codeMap,
      String typeName,
      String codeMapName) async {
    File barrel = File(path.join(outDir, "all_$codeMapName.dart"));
    var writer = barrel.openWrite(mode: FileMode.writeOnly)
      ..writeln(_fileHeader(codeMapName, '../'))
      ..writeln(codeMap.entries
          .map<String>((e) =>
              "import '${path.relative(e.value.codeFilePath, from: outDir)}' show ${e.key};\nexport '${path.relative(e.value.codeFilePath, from: outDir)}';\n")
          .join('\n'))
      ..writeln('')
      ..writeln("/// A map of all $codeMapName and their metadata")
      ..writeln(
          "const Map<int, $typeName> $codeMapName = {\n${codeMap.entries.sortedBy((e) => e.key).map((e) => "${e.value.objectId}: ${e.key}".indent(1)).join(",\n")}\n};");
    await writer.flush();
    await writer.close();
  }
}

typedef Finisher = void Function({int? progress, int? total, String? status});
typedef FinishAppender = void Function({int? progress, String? status});

Finisher printAction(String message) {
  if (aBeQuiet) {
    return ({int? progress, int? total, String? status}) {};
  }

  var paddedMessage = message.padRight(40, '.');
  stdout.write(paddedMessage);
  return ({int? progress, int? total, String? status}) {
    // Clear the current line.
    // https://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html#deletion
    stdout.write('\u001b[2K');
    stdout.writeCharCode(13);
    stdout.write(paddedMessage);

    if (progress == null) {
      print("✅");
    } else {
      var output = total != null
          ? "${((progress / total) * 100).toStringAsFixed(2)}%"
          : progress;
      // Write the output.
      stdout.write("$output${status != null ? " - $status" : ''}");
    }
  };
}

class ObjectMapMeta {
  ObjectMapMeta(this.objectId, this.codeFilePath, this.objectDisplayName);

  final int objectId;
  final String codeFilePath;
  final String objectDisplayName;
}

extension StringExtensions<E> on String {
  static var codeNameRegex = RegExp(r"\s+([a-z])");
  static var fileNameRegEx = RegExp(r"[^a-zA-Z0-9\n]+");

  String indent(int tabs) => padLeft(length + tabs, '  ');

  String toCamelCase({String? clarifier, String replacement = ''}) {
    var ascii = "$this ${clarifier ?? ''}".trim().normalize();
    var input = "${ascii[0].toLowerCase()}${ascii.substring(1)}";
    return codeNameRegex
        .allMatches(input)
        .fold<String>(
            input,
            (v, m) =>
                v.replaceRange(m.start, m.end - 1, m.group(1)!.toUpperCase()))
        .replaceAll(fileNameRegEx, replacement);
  }

  String toFilename([String replacement = '_']) =>
      normalize().trim().replaceAll(fileNameRegEx, replacement).toLowerCase();

  String normalize() {
    const others = <String, String>{
      'О': 'O',
      'к': 'k',
      'т': 't',
      'я': 'r',
      'б': '6',
      'р': 'p',
      'ь': 'b',
      'с': 'c',
      'и': 'n',
      'й': 'n',
      '-': 'Hyp',
      'ß': 'b',
      'З': '3',
      'у': 'y',
      'н': 'h',
      'м': 'm',
      'о': 'o',
      'д': 'a',
      '.': 'Dot'
    };
    return removeDiacritics(others.entries
        .fold<String>(this, (p, c) => p.replaceAll(c.key, c.value)));
  }
}

late final bool aBeQuiet;
main(List<String> args) async {
  aBeQuiet = args.contains("-q");
  if (aBeQuiet) print('Quietly running composer...');
  await Composer.compose();
}
