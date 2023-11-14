/// Access to known geographies in `Bahrain` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'bahrain_cities.dart';

/// The `Capital` region in `Bahrain`
const Region bahrainCapital = Region(
  id: 1992,
  parentId: 18,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Capital",
  type: null,
  stateCode: "13",
  cities: [
    capitalJiddHafsCity,
    capitalManamaCity,
    capitalSitrahCity
  ]);

/// The `Central` region in `Bahrain`
const Region bahrainCentral = Region(
  id: 1996,
  parentId: 18,
  longitude: 50.5653294,
  latitude: 26.1426093,
  name: "Central",
  type: null,
  stateCode: "16",
  cities: [
    centralMadinatHamadCity
  ]);

/// The `Muharraq` region in `Bahrain`
const Region bahrainMuharraq = Region(
  id: 1995,
  parentId: 18,
  longitude: 50.6482517,
  latitude: 26.2685653,
  name: "Muharraq",
  type: null,
  stateCode: "15",
  cities: [
    muharraqAlHaddCity,
    muharraqAlMuharraqCity
  ]);

/// The `Northern` region in `Bahrain`
const Region bahrainNorthern = Region(
  id: 1994,
  parentId: 18,
  longitude: 50.4825173,
  latitude: 26.1551914,
  name: "Northern",
  type: null,
  stateCode: "17",
  cities: []);

/// The `Southern` region in `Bahrain`
const Region bahrainSouthern = Region(
  id: 1993,
  parentId: 18,
  longitude: 50.5756887,
  latitude: 25.9381018,
  name: "Southern",
  type: null,
  stateCode: "14",
  cities: [
    southernArRifaCity,
    southernDarKulaybCity,
    southernMadinatisaCity
  ]);

/// The 5 states of `Bahrain` keyed by their id.
const Map<int, Region> bahrainStates = <int, Region>{
    1992: bahrainCapital,
    1996: bahrainCentral,
    1995: bahrainMuharraq,
    1994: bahrainNorthern,
    1993: bahrainSouthern
  };
