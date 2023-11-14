/// Access to known geographies in `Rwanda` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'rwanda_cities.dart';

/// The `Eastern Province` region in `Rwanda`
const Region rwandaEasternProvince = Region(
  id: 261,
  parentId: 183,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Eastern Province",
  type: null,
  stateCode: "02",
  cities: [
    easternProvinceKibungoCity,
    easternProvinceRwamaganaCity
  ]);

/// The `Kigali district` region in `Rwanda`
const Region rwandaKigaliDistrict = Region(
  id: 262,
  parentId: 183,
  longitude: 30.0618851,
  latitude: -1.9440727,
  name: "Kigali district",
  type: null,
  stateCode: "01",
  cities: [
    kigaliDistrictKigaliCity
  ]);

/// The `Northern Province` region in `Rwanda`
const Region rwandaNorthernProvince = Region(
  id: 263,
  parentId: 183,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Northern Province",
  type: null,
  stateCode: "03",
  cities: [
    northernProvinceByumbaCity,
    northernProvinceMusanzeCity
  ]);

/// The `Southern Province` region in `Rwanda`
const Region rwandaSouthernProvince = Region(
  id: 259,
  parentId: 183,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Southern Province",
  type: null,
  stateCode: "05",
  cities: [
    southernProvinceButareCity,
    southernProvinceEgliseCatholiqueCentraleGikoCity,
    southernProvinceGitaramaCity,
    southernProvinceNzegaCity
  ]);

/// The `Western Province` region in `Rwanda`
const Region rwandaWesternProvince = Region(
  id: 260,
  parentId: 183,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Western Province",
  type: null,
  stateCode: "04",
  cities: [
    westernProvinceCyanguguCity,
    westernProvinceGisenyiCity,
    westernProvinceKibuyeCity
  ]);

/// The 5 states of `Rwanda` keyed by their id.
const Map<int, Region> rwandaStates = <int, Region>{
    261: rwandaEasternProvince,
    262: rwandaKigaliDistrict,
    263: rwandaNorthernProvince,
    259: rwandaSouthernProvince,
    260: rwandaWesternProvince
  };
