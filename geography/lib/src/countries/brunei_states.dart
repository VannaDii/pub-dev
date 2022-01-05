/// Access to known geographies in Brunei and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'brunei_cities.dart';

/// The 4 regions of `🇧🇳 Brunei`
const Region bruneiBelaitDistrict = Region(id: 1217, parentId: 33, longitude: 114.6192899, latitude: 4.3750749,
          name: "Belait District", type: null, stateCode: "BE",
          cities: [
            bruneiBelaitDistrictKualaBelait,
            bruneiBelaitDistrictSeria
          ]);
const Region bruneiBruneiHypMuaraDistrict = Region(id: 1216, parentId: 33, longitude: 114.9516869, latitude: 4.9311206,
          name: "Brunei-Muara District", type: null, stateCode: "BM",
          cities: [
            bruneiBruneiHypMuaraDistrictBandarSeriBegawan,
            bruneiBruneiHypMuaraDistrictBerakasA,
            bruneiBruneiHypMuaraDistrictKapok,
            bruneiBruneiHypMuaraDistrictMentiri,
            bruneiBruneiHypMuaraDistrictSerasa
          ]);
const Region bruneiTemburongDistrict = Region(id: 1218, parentId: 33, longitude: 115.141484, latitude: 4.6204128,
          name: "Temburong District", type: null, stateCode: "TE",
          cities: [
            bruneiTemburongDistrictBangar
          ]);
const Region bruneiTutongDistrict = Region(id: 1219, parentId: 33, longitude: 114.6667939, latitude: 4.7140373,
          name: "Tutong District", type: null, stateCode: "TU",
          cities: [
            bruneiTutongDistrictTutong
          ]);

const bruneiStates = <int, Region>{
    1217: bruneiBelaitDistrict,
    1216: bruneiBruneiHypMuaraDistrict,
    1218: bruneiTemburongDistrict,
    1219: bruneiTutongDistrict
  };
