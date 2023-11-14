/// Access to known geographies in `Virgin Islands (US)` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'virginislandsus_cities.dart';

/// The `Saint Croix` region in `Virgin Islands (US)`
const Region virginIslandsusSaintCroixDistrict = Region(
  id: 5074,
  parentId: 242,
  longitude: -64.7343705,
  latitude: 17.729352,
  name: "Saint Croix",
  type: "district",
  stateCode: "SC",
  cities: [
    saintCroixDistrictChristianstedCity,
    saintCroixDistrictEastEndCity,
    saintCroixDistrictFrederikstedCity,
    saintCroixDistrictGoodHopeCity,
    saintCroixDistrictNorthcentralCity,
    saintCroixDistrictNorthwestCity,
    saintCroixDistrictSionFarmCity,
    saintCroixDistrictSouthcentralCity,
    saintCroixDistrictSouthwestCity
  ]);

/// The `Saint John` region in `Virgin Islands (US)`
const Region virginIslandsusSaintJohnDistrict = Region(
  id: 5073,
  parentId: 242,
  longitude: -64.80028,
  latitude: 18.3356169,
  name: "Saint John",
  type: "district",
  stateCode: "SJ",
  cities: [
    saintJohnDistrictCentralCity,
    saintJohnDistrictCoralBayCity,
    saintJohnDistrictCruzBayCity,
    saintJohnDistrictEastEndCity
  ]);

/// The `Saint Thomas` region in `Virgin Islands (US)`
const Region virginIslandsusSaintThomasDistrict = Region(
  id: 5072,
  parentId: 242,
  longitude: -65.077018,
  latitude: 18.3428459,
  name: "Saint Thomas",
  type: "district",
  stateCode: "ST",
  cities: [
    saintThomasDistrictCharlotteAmalieCity,
    saintThomasDistrictEastEndCity,
    saintThomasDistrictNorthsideCity,
    saintThomasDistrictSouthsideCity,
    saintThomasDistrictTutuCity,
    saintThomasDistrictWaterIslandCity,
    saintThomasDistrictWestEndCity
  ]);

/// The 3 states of `Virgin Islands (US)` keyed by their id.
const Map<int, Region> virginIslandsusStates = <int, Region>{
    5074: virginIslandsusSaintCroixDistrict,
    5073: virginIslandsusSaintJohnDistrict,
    5072: virginIslandsusSaintThomasDistrict
  };
