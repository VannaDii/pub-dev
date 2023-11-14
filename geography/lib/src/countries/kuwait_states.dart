/// Access to known geographies in `Kuwait` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'kuwait_cities.dart';

/// The `Al Ahmadi` region in `Kuwait`
const Region kuwaitAlAhmadi = Region(
  id: 977,
  parentId: 117,
  longitude: 48.1024743,
  latitude: 28.5745125,
  name: "Al Ahmadi",
  type: null,
  stateCode: "AH",
  cities: [
    alAhmadiAlAhmadiCity,
    alAhmadiAlFahahilCity,
    alAhmadiAlFintasCity,
    alAhmadiAlMahbulahCity,
    alAhmadiAlManqafCity,
    alAhmadiAlWafrahCity,
    alAhmadiArRiqqahCity
  ]);

/// The `Al Farwaniyah` region in `Kuwait`
const Region kuwaitAlFarwaniyah = Region(
  id: 975,
  parentId: 117,
  longitude: 47.9400154,
  latitude: 29.273357,
  name: "Al Farwaniyah",
  type: null,
  stateCode: "FA",
  cities: [
    alFarwaniyahAlFarwaniyahCity,
    alFarwaniyahJanubAsSurrahCity
  ]);

/// The `Al Jahra` region in `Kuwait`
const Region kuwaitAlJahra = Region(
  id: 972,
  parentId: 117,
  longitude: 47.7634731,
  latitude: 29.9931831,
  name: "Al Jahra",
  type: null,
  stateCode: "JA",
  cities: [
    alJahraAlJahraCity
  ]);

/// The `Capital` region in `Kuwait`
const Region kuwaitCapital = Region(
  id: 976,
  parentId: 117,
  longitude: 50.5860497,
  latitude: 26.2285161,
  name: "Capital",
  type: null,
  stateCode: "KU",
  cities: [
    capitalAdDasmahCity,
    capitalArRabiyahCity,
    capitalAshShamiyahCity,
    capitalAzZawrCity,
    capitalKuwaitCityCity
  ]);

/// The `Hawalli` region in `Kuwait`
const Region kuwaitHawalli = Region(
  id: 973,
  parentId: 117,
  longitude: 48.0307613,
  latitude: 29.3056716,
  name: "Hawalli",
  type: null,
  stateCode: "HA",
  cities: [
    hawalliArRumaythiyahCity,
    hawalliAsSalimiyahCity,
    hawalliBayanCity,
    hawalliHawalliCity,
    hawalliSalwaCity
  ]);

/// The `Mubarak Al-Kabeer` region in `Kuwait`
const Region kuwaitMubarakAlHypkabeer = Region(
  id: 974,
  parentId: 117,
  longitude: 48.0605108,
  latitude: 29.21224,
  name: "Mubarak Al-Kabeer",
  type: null,
  stateCode: "MU",
  cities: [
    mubarakAlHypkabeerAbuAlHasaniyaCity,
    mubarakAlHypkabeerAbuFatiraCity,
    mubarakAlHypkabeerAlFunaytisCity,
    mubarakAlHypkabeerAlHypmasayelCity,
    mubarakAlHypkabeerSabahAsSalimCity
  ]);

/// The 6 states of `Kuwait` keyed by their id.
const Map<int, Region> kuwaitStates = <int, Region>{
    977: kuwaitAlAhmadi,
    975: kuwaitAlFarwaniyah,
    972: kuwaitAlJahra,
    976: kuwaitCapital,
    973: kuwaitHawalli,
    974: kuwaitMubarakAlHypkabeer
  };
