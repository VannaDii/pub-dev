import 'dart:io';
import 'dart:convert';

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
        return value;
    }
  }

  static String _fileHeader(String tag, [String basePath = 'src/']) {
    return """
/// Access to known $tag and their meta data.
library geography;

import '${basePath}base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/
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

  static String _mts<T>(Map<String, T> geos, {int tabs = 1}) {
    var init = List<String>.empty(growable: true);
    return geos.isEmpty
        ? "{}"
        : [
            "{",
            geos.entries
                .fold<List<String>>(
                    init,
                    (p, c) => [
                          ...p,
                          "\"${c.key}\": ${_qon(c.value.toString())}"
                              .indent(tabs + 1)
                        ])
                .join(",\n"),
            "}".indent(tabs)
          ].join("\n");
  }

  static String _sourceCodeFor<T extends bases.GeoObject>(T geo,
      {int tabs = 1}) {
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
        "states: ${_lts(geo.states, tabs: tabs + 4)},".indent(tabs + 4),
        "timezones: ${_lts(geo.timezones, tabs: tabs + 4)},".indent(tabs + 4),
        "translations: ${_mts(geo.translations, tabs: tabs + 4)})"
            .indent(tabs + 4)
      ].join("\n");
    } else if (geo is bases.Region) {
      return [
        "Region(id: ${geo.id}, longitude: ${geo.longitude}, latitude: ${geo.latitude},"
            .indent(tabs),
        "name: ${_qon(geo.name)}, type: ${_qon(geo.type)}, stateCode: ${_qon(geo.stateCode)},"
            .indent(tabs + 4),
        "cities: ${_lts(geo.cities, tabs: tabs + 4)})".indent(tabs + 4)
      ].join("\n");
    } else if (geo is bases.City) {
      return "City(id: ${geo.id}, name: ${_qon(geo.name)}, longitude: ${geo.longitude}, latitude: ${geo.latitude})"
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
    var client = http.Client();
    const repoOwner = "dr5hn";
    const repoName = "countries-states-cities-database";
    const targetFileName = "countries+states+cities.json";
    const initialPath = "/repos/$repoOwner/$repoName/releases/latest";
    var releasesUrl = Uri.https("api.github.com", initialPath);

    var zipballUrl = await client
        .get(releasesUrl)
        .then((res) => jsonDecode(res.body)["zipball_url"]?.toString());

    if (zipballUrl == null || zipballUrl.isEmpty) {
      throw Exception("Failed to obtain zipball from geo-data releases.");
    }

    var countries = await client
        .get(Uri.parse(zipballUrl))
        .then((res) => zip.ZipDecoder()
            .decodeBytes(res.bodyBytes)
            .files
            .firstWhere((af) => af.isFile && af.name.endsWith(targetFileName))
            .content as List<int>)
        .then((bytes) => utf8.decode(bytes))
        .then((value) => jsonDecode(value, reviver: _reviver) as List<dynamic>)
        .then((value) => value
            .map((e) => bases.Country.fromJson(e as Map<String, dynamic>))
            .toList());

    var scriptDir = Platform.script.path;
    var abnormalPath = path.join(scriptDir, "../../../../../lib/");
    var basePath = path.canonicalize(abnormalPath);

    _writeCountries(basePath, countries);
  }

  static void _writeCountries(
      String basePath, List<bases.Country> countries) async {
    var countryCodeMap = <String, String>{};
    var countriesDir = path.join(basePath, "src", "countries");
    if (!Directory(countriesDir).existsSync()) {
      Directory(countriesDir).createSync(recursive: true);
    }

    await Future.wait(countries
        .map((country) => Future<void>(() async {
              var countryCodeName = country.name.toCamelCase();
              var countryFilename = country.name.toFilename();
              var countryFilePath =
                  path.join(countriesDir, "$countryFilename.dart");
              File file = File(countryFilePath);
              var writer = file.openWrite(mode: FileMode.writeOnly)
                ..writeln(_fileHeader("geographies in ${country.name}", '../'))
                ..writeln(
                    "/// The country of `${country.emoji} ${country.name}`, and its ${country.states.length} states")
                ..writeln(
                    "const Country $countryCodeName = ${_sourceCodeFor(country, tabs: 1).trim()};");
              await writer.flush();
              await writer.close();
              countryCodeMap[countryCodeName] = countryFilePath;
            }))
        .toList(growable: false));

    await _writeBarrel(countriesDir, countryCodeMap);
  }

  static Future<void> _writeBarrel(
      String countriesDir, Map<String, String> countryCodeMap) async {
    File barrel = File(path.join(countriesDir, "all.dart"));
    var writer = barrel.openWrite(mode: FileMode.writeOnly)
      ..writeln(_fileHeader("countries", '../'))
      ..writeln(countryCodeMap.entries
          .map<String>((e) =>
              "import '${path.relative(e.value, from: countriesDir)}' show ${e.key};")
          .join('\n'))
      ..writeln('')
      ..writeln("/// A list of all known countries on earth and their metadata")
      ..writeln(
          "const List<Country> countries = [\n${countryCodeMap.keys.map((e) => e.indent(1)).join(",\n")}\n];");
    await writer.flush();
    await writer.close();
  }
}

extension StringExtensions<E> on String {
  static var fileNameRegEx = RegExp(r"[^a-zA-Z\n]+");

  String indent(int tabs) => padLeft(length + tabs, '  ');

  String toCamelCase([String replacement = '']) =>
      "${this[0].toLowerCase()}${substring(1)}"
          .replaceAll(fileNameRegEx, replacement);

  String toFilename([String replacement = '_']) =>
      trim().replaceAll(fileNameRegEx, replacement).toLowerCase();
}

main() async {
  await Composer.compose();
}
