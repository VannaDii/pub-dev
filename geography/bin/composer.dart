import 'dart:io';
import 'dart:convert';

import 'package:diacritic/diacritic.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;
import 'package:archive/archive.dart' as zip;
import 'package:geography/src/base.dart' as bases;

class ComposerV2 {
  const ComposerV2();

  /// Composes the code files for the countries and their children.
  static Future<void> compose() async {
    final scriptDir = Platform.script.path;
    final abnormalPath = path.join(scriptDir, "../../../../../lib/src/");
    final basePath = path.canonicalize(abnormalPath);
    final countriesDir = path.join(basePath, "countries");
    final countryCodeMap = <String, ObjectMapMeta>{};
    final regionsCodeMap = <String, ObjectMapMeta>{};

    if (!Directory(countriesDir).existsSync()) {
      Directory(countriesDir).createSync(recursive: true);
    }

    List<bases.Country> countries = await downloadCountries();
    countries.sort((a, b) => a.id - b.id);

    var finisher = printAction("📓 Composing data-as-code files");
    final totalCount = countries.length +
        countries.fold<int>(0, (p, c) => p + c.states.length) +
        countries.fold<int>(0,
            (p, c) => p + c.states.fold<int>(0, (p, c) => p + c.cities.length));

    finisher(increment: 0, total: totalCount, status: "Starting");
    await Future.wait(countries.map((c) {
      return c.writeCodeFiles(basePath, finisher);
    })).then((metaMaps) {
      finisher();
      for (final m in metaMaps) {
        countryCodeMap.addAll(m);
        for (final v in m.values) {
          regionsCodeMap.addAll(v.children);
        }
      }
    }).catchError((e) {
      if (e is Error) {
        print(
            "👎 Failed to compose code files: ${e.toString()} ${e.stackTrace}");
      } else {
        print("👎 Failed to compose code files: $e");
      }
    });

    finisher = printAction("📝 Creating barrel files");
    finisher(increment: 0, total: 2, status: "Countries");
    await writeBarrel(countriesDir, countryCodeMap, "Country", "countries");
    finisher(increment: 1, total: 2, status: "Regions");
    await writeBarrel(countriesDir, regionsCodeMap, "Region", "states");
    finisher();
  }

  /// Writes a reusable barrel file for the given [codeMap].
  static Future<void> writeBarrel(
      String outDir,
      Map<String, ObjectMapMeta> codeMap,
      String typeName,
      String codeMapName) async {
    var keyedMap = Map.fromEntries(codeMap.entries
        .map((e) => MapEntry(e.value.objectId, e.key))
        .sorted((a, b) => a.key.compareTo(b.key)));
    File barrel = File(path.join(outDir, "all_$codeMapName.dart"));
    var writer = barrel.openWrite(mode: FileMode.writeOnly)
      ..writeln(codeFileHeader(codeMapName, '../'))
      ..writeln(codeMap.entries
          .map((e) => Map.fromEntries([
                MapEntry(e.value.codeFilePath, [e.key])
              ]))
          .reduce((p, c) {
            p[c.entries.first.key] = p[c.entries.first.key] ?? [];
            p[c.entries.first.key]!.addAll(c.entries.first.value);
            return p;
          })
          .entries
          .sortedBy((e) => e.key)
          .map<String>((e) =>
              "import '${path.relative(e.key, from: outDir)}' show ${e.value.join(', ')};")
          .join('\n'))
      ..writeln("")
      ..writeln(codeMap.entries
          .map((e) => e.value.codeFilePath)
          .toSet()
          .map<String>((e) => "export '${path.relative(e, from: outDir)}';")
          .join('\n'))
      ..writeln('')
      ..writeln(
          "/// A map of all $codeMapName and their metadata keyed by `id`")
      ..writeln(
          "const Map<int, $typeName> $codeMapName = {\n${keyedMap.entries.map((e) => "${e.key}: ${e.value.toCamelCase()}".indent(1)).join(",\n")}\n};");
    await writer.flush();
    await writer.close();
  }

  /// Builds the expected text for a code file header.
  static String codeFileHeader(String tag,
      [String basePath = 'src/', List<String> imports = const []]) {
    return """
/// Access to known $tag and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '${basePath}base.dart';${imports.toSet().where((e) => e.isNotEmpty).map((e) => "\nimport '$e';").join()}
""";
  }

  /// Handles reviving JSON GeoData and translating some attribute value types.
  static Object? jsonReviver(Object? key, Object? value) {
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

  /// Downloads remote data from the `countries-states-cities-database`
  /// repository, and returns them as a list of [Country] objects.
  static Future<List<bases.Country>> downloadCountries() async {
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
            finisher(increment: index, total: fileCount, status: file.name);
            if (file.isFile && file.name.endsWith(targetFileName)) {
              return file.content as List<int>;
            }
          }
          return List<int>.empty();
        })
        .then((bytes) => utf8.decode(bytes))
        .then(
            (value) => jsonDecode(value, reviver: jsonReviver) as List<dynamic>)
        .then((value) => value
            .map((e) => bases.Country.fromJson(e as Map<String, dynamic>))
            .toList());
    finisher();
    return countries;
  }
}

typedef GeoNodeNamer = String Function(bases.GeoLocationNode);
typedef Finisher = void Function({int? increment, int? total, String? status});
typedef FinishAppender = void Function({int? progress, String? status});

Finisher printAction(String message) {
  if (aBeQuiet) {
    return ({int? increment, int? total, String? status}) {};
  }

  var lastTotal = 0;
  var lastProgress = 0;
  var paddedMessage = message.padRight(40, '.');
  stdout.write(paddedMessage);
  return ({int? increment, int? total, String? status}) {
    // Clear the current line.
    // https://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html#deletion
    stdout.write('\u001b[2K');
    stdout.writeCharCode(13);
    stdout.write(paddedMessage);

    if (increment == null) {
      print("✅");
    } else {
      lastTotal = total ?? lastTotal;
      lastProgress += increment;
      var output = lastTotal > 0
          ? "${((lastProgress / lastTotal) * 100).toStringAsFixed(2)}%"
          : lastProgress;
      // Write the output.
      stdout.write("$output${status != null ? " : $status" : ''}");
    }
  };
}

class ObjectMapMeta {
  ObjectMapMeta(
    this.objectId,
    this.codeFilePath,
    this.objectDisplayName,
    this.children,
  );

  final int objectId;
  final String codeFilePath;
  final String objectDisplayName;
  final Map<String, ObjectMapMeta> children;
}

extension MapExtensions on Map<String, dynamic> {
  String codedMap([int tabs = 1]) {
    return isEmpty
        ? "{}"
        : [
            "{",
            entries.fold<List<String>>([], (p, c) {
              return [
                ...p,
                "\"${c.key}\": ${c.value.toString().quotedOrNull}"
                    .indent(tabs + 1)
              ];
            }).join(",\n"),
            "}".indent(tabs)
          ].join("\n");
  }
}

extension TimezonesExtensions on Iterable<bases.Timezone>? {
  String codedList({int tabs = 1}) {
    return this == null || this!.isEmpty
        ? "[]"
        : [
            "[",
            this!.map((s) {
              return """Timezone(
      abbreviation: ${s.abbreviation.quotedOrNull},
      gmtOffset: ${s.gmtOffset},
      gmtOffsetName: ${s.gmtOffsetName.quotedOrNull},
      tzName: ${s.tzName.quotedOrNull},
      zoneName: ${s.zoneName.quotedOrNull})"""
                  .indent(tabs + 1);
            }).join(",\n"),
            "]".indent(tabs)
          ].join("\n");
  }
}

extension IterableExtensions<E extends bases.GeoLocationNode> on Iterable<E> {
  Iterable<E> deDupe<K extends Comparable<K>>(K Function(E value) keyOf) {
    return groupBy(this, keyOf).values.map((e) => e.first);
  }

  Iterable<E> deDupeByCodeName() => deDupe((e) => e.codeName);
}

extension GeosExtensions<E extends bases.GeoLocationNode> on Iterable<E> {
  String codedList([String? prefix, int tabs = 1]) {
    return isEmpty
        ? "[]"
        : [
            "[",
            map((s) {
              return "${prefix ?? ""}${s.getNameQualified()}"
                  .toCamelCase()
                  .indent(tabs + 1);
            }).join(",\n"),
            "]".indent(tabs)
          ].join("\n");
  }

  String codedMap([String? prefix, int tabs = 1]) {
    return isEmpty
        ? "{}"
        : [
            "{",
            fold<List<String>>([], (p, c) {
              return [
                ...p,
                "${c.id}: ${'${prefix ?? ""}${c.getNameQualified()}'.toCamelCase()}"
                    .indent(tabs + 1)
              ];
            }).join(",\n"),
            "}".indent(tabs)
          ].join("\n");
  }

  String complexMap(GeoNodeNamer namer, [int tabs = 1]) {
    return isEmpty
        ? "{}"
        : [
            "{",
            fold<List<String>>([], (p, c) {
              return [...p, "${c.id}: ${namer(c)}".indent(tabs + 1)];
            }).join(",\n"),
            "}".indent(tabs)
          ].join("\n");
  }
}

extension GeoExtensions<E extends bases.GeoLocationNode> on E {
  String get nameTitleCase {
    var cleric = this is bases.Region
        ? (this as bases.Region).type ?? ''
        : this is bases.City
            ? "City"
            : "";
    return "${name.toTitleCase(' ')}${cleric.toTitleCase(' ')}";
  }

  String get codeName => nameTitleCase.replaceAll(RegExp(' '), '');

  String getNameQualified([bases.Country? country, bases.Region? region]) {
    return [country?.codeName, region?.codeName, codeName]
        .where((e) => e != null && e.isNotEmpty)
        .toList()
        .join();
  }

  String codeFileHeader(String tag,
          [String basePath = 'src/', List<String> imports = const []]) =>
      ComposerV2.codeFileHeader(tag, basePath, imports);
}

extension CountryExtensions<E extends bases.Country> on E {
  /// Writes the state code files, if any, and the country code file.
  String getCode() {
    return """const $runtimeType ${codeName.toCamelCase()} = Country(
  id: $id,
  name: ${name.quotedOrNull},
  longitude: $longitude,
  latitude: $latitude,
  capital: ${capital.quotedOrNull},
  currency: ${currency.quotedOrNull},
  currencySymbol: ${currencySymbol.quotedOrNull},
  currencyName: ${currencyName.quotedOrNull},
  emoji: ${emoji.quotedOrNull},
  emojiU: ${emojiU.quotedOrNull},
  iso2: ${iso2.quotedOrNull},
  iso3: ${iso3.quotedOrNull},
  native: ${native.quotedOrNull},
  numericCode: ${numericCode.quotedOrNull},
  nationality: ${nationality.quotedOrNull},
  phoneCode: ${phoneCode.quotedOrNull},
  region: ${region.quotedOrNull},
  subregion: ${subregion.quotedOrNull},
  tld: ${tld.quotedOrNull},
  states: ${states.codedList(codeName)},
  timezones: ${timezones.codedList()},
  translations: ${translations.codedMap()});""";
  }

  /// Writes the cities code file.
  Future<String> writeCitiesFile(String basePath, Finisher finisher) async {
    var citiesPath =
        path.join(basePath, "countries", "${name.toFilename()}_cities.dart");
    File file = File(citiesPath);
    final writer = file.openWrite(mode: FileMode.writeOnly)
      ..writeln(codeFileHeader("geographies in `$name`", "../"))
      ..writeln(states
          .map((s) => s.cities
              .deDupeByCodeName()
              .map((c) {
                finisher(
                  increment: 1,
                  status: "$name -> ${s.name} -> ${c.name}",
                );
                return c.getCode(this, s);
              })
              .where((code) => code.trim().isNotEmpty)
              .join("\n\n"))
          .where((code) => code.trim().isNotEmpty)
          .join("\n\n"))
      ..writeln("")
      ..writeln(
          "/// The ${states.map((s) => s.cities.length).sum} cities of `$name` keyed by their id.")
      ..writeln(
          "const Map<int, City> ${codeName.toCamelCase()}Cities = <int, City>${states.map((s) => s.cities).flattened.complexMap((n) => n.getNameQualified(null, states.firstWhere((s) => s.cities.contains(n))).toCamelCase())};");
    await writer.flush();
    await writer.close();

    return citiesPath;
  }

  /// Writes the states code file and the cities code file, if any.
  Future<(String, Map<String, ObjectMapMeta>)> writeStatesFile(
    String basePath,
    Finisher finisher,
  ) async {
    // Write states file. (this should force writing the cities file)
    final hasCities = states.any((s) => s.cities.isNotEmpty);
    final citiesFile = hasCities
        ? path.basename(await writeCitiesFile(basePath, finisher))
        : '';
    final statesPath =
        path.join(basePath, "countries", "${name.toFilename()}_states.dart");
    final sharedPrefix = codeName.toCamelCase();
    final metaMap = <String, ObjectMapMeta>{};
    final file = File(statesPath);
    final writer = file.openWrite(mode: FileMode.writeOnly)
      ..writeln(codeFileHeader(
        "geographies in `$name`",
        "../",
        hasCities ? [citiesFile] : [],
      ))
      ..writeln(states
          .map((s) {
            final stateName = "${codeName.toCamelCase()}${s.codeName}";
            metaMap[stateName] = ObjectMapMeta(s.id, statesPath, stateName, {});
            finisher(increment: 1, status: "$name -> ${s.name}");
            return s.getCode(this);
          })
          .where((code) => code.trim().isNotEmpty)
          .join("\n\n"))
      ..writeln()
      ..writeln("/// The ${states.length} states of `$name` keyed by their id.")
      ..writeln(
          "const Map<int, Region> ${codeName.toCamelCase()}States = <int, Region>${states.codedMap(sharedPrefix)};");
    await writer.flush();
    await writer.close();
    finisher(increment: 1, status: name);

    return (statesPath, metaMap);
  }

  /// Writes the country, states, and cities code files.
  Future<Map<String, ObjectMapMeta>> writeCodeFiles(
      String basePath, Finisher finisher) async {
    // Write states file. (this should force writing the cities file)
    final hasStates = states.isNotEmpty;
    final (statesFileFull, statesMapMeta) = hasStates
        ? await writeStatesFile(basePath, finisher)
        : ('', <String, ObjectMapMeta>{});
    final statesFile = path.basename(statesFileFull);

    final countryFilePath =
        path.join(basePath, "countries", "${name.toFilename()}.dart");
    final file = File(countryFilePath);
    final writer = file.openWrite(mode: FileMode.writeOnly)
      ..writeln(codeFileHeader(
        "geographies in $name",
        "../",
        hasStates ? [statesFile] : [],
      ))
      ..writeln("/// The country of `$name`, and its ${states.length} states")
      ..writeln(getCode());
    await writer.flush();
    await writer.close();
    finisher(increment: 1, status: name);

    return {
      codeName.toCamelCase():
          ObjectMapMeta(id, countryFilePath, name, statesMapMeta)
    };
  }
}

extension RegionExtensions<E extends bases.Region> on E {
  /// Writes the city code files, if any, and the state code file.
  String getCode(bases.Country country) {
    final tabs = 1;

    return """/// The `$name` region in `${country.name}`
const $runtimeType ${country.codeName.toCamelCase()}$codeName = Region(
  id: $id,
  parentId: $parentId,
  longitude: $longitude,
  latitude: $latitude,
  name: ${name.quotedOrNull},
  type: ${type.quotedOrNull},
  stateCode: ${stateCode.quotedOrNull},
  cities: ${cities.codedList(codeName, tabs)});""";
  }
}

extension CityExtensions<E extends bases.City> on E {
  /// Writes the city code for insertion into a cities file.
  String getCode(bases.Country country, bases.Region region) {
    return """/// The `$name` city in `${region.name}`
const $runtimeType ${region.codeName.toCamelCase()}$codeName = City(
  id: $id,
  parentId: $parentId,
  name: ${name.quotedOrNull},
  longitude: $longitude,
  latitude: $latitude);""";
  }
}

extension NullableStringExtensions<E extends String?> on E {
  String get quotedOrNull =>
      this == null ? "null" : "\"${this?.replaceAll(r'$', "\\\$")}\"";
}

extension StringExtensions<E> on String {
  static var codeNameRegex = RegExp(r"\s+([a-z])");
  static var fileNameRegEx = RegExp(r"[^a-zA-Z0-9\n]+");

  String indent(int tabs) => padLeft(length + tabs, '  ');

  String toCamelCase({String? clarifier, String replacement = ''}) {
    var cleric = clarifier != null
        ? "${clarifier[0].toUpperCase()}${clarifier.substring(1)}"
        : '';
    var ascii = "$this$cleric".trim().normalize(replacement);
    var input = "${ascii[0].toLowerCase()}${ascii.substring(1)}";
    return input;
  }

  String toFilename([String replacement = '_']) =>
      normalize().trim().replaceAll(fileNameRegEx, replacement).toLowerCase();

  String toTitleCase([String joiner = '']) {
    try {
      return (length > 1
              ? trim()
                  .split(' ')
                  .where((word) => word.isNotEmpty)
                  .map((word) => "${word[0].toUpperCase()}"
                      "${word.substring(1).toLowerCase()}")
                  .join(joiner)
              : this)
          .normalize();
    } catch (e) {
      print("Failed to title case '$this' : $e");
      return this.normalize();
    }
  }

  String normalize([String replacement = '']) {
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
      '.': ''
    };
    var input = removeDiacritics(others.entries
        .fold<String>(this, (p, c) => p.replaceAll(c.key, c.value)));
    return codeNameRegex
        .allMatches(input)
        .fold<String>(
            input,
            (v, m) =>
                v.replaceRange(m.start, m.end - 1, m.group(1)!.toUpperCase()))
        .replaceAll(fileNameRegEx, replacement);
  }
}

late final bool aBeQuiet;
main(List<String> args) async {
  aBeQuiet = args.contains("-q") || args.contains("--quiet");
  if (aBeQuiet) print('Quietly running composer...');
  await ComposerV2.compose();
}
