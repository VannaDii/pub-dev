/// Access to known geographies in `Brunei` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'brunei_cities.dart';

/// The `Belait District` region in `Brunei`
const Region bruneiBelaitDistrict = Region(
  id: 1217,
  parentId: 33,
  longitude: 114.6192899,
  latitude: 4.3750749,
  name: "Belait District",
  type: null,
  stateCode: "BE",
  cities: [
    belaitDistrictKualaBelaitCity,
    belaitDistrictSeriaCity
  ]);

/// The `Brunei-Muara District` region in `Brunei`
const Region bruneiBruneiHypmuaraDistrict = Region(
  id: 1216,
  parentId: 33,
  longitude: 114.9516869,
  latitude: 4.9311206,
  name: "Brunei-Muara District",
  type: null,
  stateCode: "BM",
  cities: [
    bruneiHypmuaraDistrictBandarSeriBegawanCity,
    bruneiHypmuaraDistrictBerakasACity,
    bruneiHypmuaraDistrictKapokCity,
    bruneiHypmuaraDistrictMentiriCity,
    bruneiHypmuaraDistrictSerasaCity
  ]);

/// The `Temburong District` region in `Brunei`
const Region bruneiTemburongDistrict = Region(
  id: 1218,
  parentId: 33,
  longitude: 115.141484,
  latitude: 4.6204128,
  name: "Temburong District",
  type: null,
  stateCode: "TE",
  cities: [
    temburongDistrictBangarCity
  ]);

/// The `Tutong District` region in `Brunei`
const Region bruneiTutongDistrict = Region(
  id: 1219,
  parentId: 33,
  longitude: 114.6667939,
  latitude: 4.7140373,
  name: "Tutong District",
  type: null,
  stateCode: "TU",
  cities: [
    tutongDistrictTutongCity
  ]);

/// The 4 states of `Brunei` keyed by their id.
const Map<int, Region> bruneiStates = <int, Region>{
    1217: bruneiBelaitDistrict,
    1216: bruneiBruneiHypmuaraDistrict,
    1218: bruneiTemburongDistrict,
    1219: bruneiTutongDistrict
  };
