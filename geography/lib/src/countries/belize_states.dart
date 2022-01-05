/// Access to known geographies in Belize and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'belize_cities.dart';

/// The 6 regions of `🇧🇿 Belize`
const Region belizeBelizeDistrict = Region(id: 264, parentId: 23, longitude: -88.4016041, latitude: 17.5677679,
          name: "Belize District", type: null, stateCode: "BZ",
          cities: [
            belizeBelizeDistrictBelizeCity,
            belizeBelizeDistrictSanPedro
          ]);
const Region belizeCayoDistrict = Region(id: 269, parentId: 23, longitude: -88.9413865, latitude: 17.0984445,
          name: "Cayo District", type: null, stateCode: "CY",
          cities: [
            belizeCayoDistrictBelmopan,
            belizeCayoDistrictBenqueViejoEelCarmen,
            belizeCayoDistrictSanIgnacio,
            belizeCayoDistrictValleyOofPeace
          ]);
const Region belizeCorozalDistrict = Region(id: 266, parentId: 23, longitude: -88.2461183, latitude: 18.1349238,
          name: "Corozal District", type: null, stateCode: "CZL",
          cities: [
            belizeCorozalDistrictCorozal
          ]);
const Region belizeOrangeWalkDistrict = Region(id: 268, parentId: 23, longitude: -88.864698, latitude: 17.760353,
          name: "Orange Walk District", type: null, stateCode: "OW",
          cities: [
            belizeOrangeWalkDistrictHopelchen,
            belizeOrangeWalkDistrictOrangeWalk,
            belizeOrangeWalkDistrictShipyard
          ]);
const Region belizeStannCreekDistrict = Region(id: 265, parentId: 23, longitude: -88.4016041, latitude: 16.8116631,
          name: "Stann Creek District", type: null, stateCode: "SC",
          cities: [
            belizeStannCreekDistrictDangriga,
            belizeStannCreekDistrictPlacencia
          ]);
const Region belizeToledoDistrict = Region(id: 267, parentId: 23, longitude: -88.864698, latitude: 16.2491923,
          name: "Toledo District", type: null, stateCode: "TOL",
          cities: [
            belizeToledoDistrictPuntaGorda
          ]);

const belizeStates = <int, Region>{
    264: belizeBelizeDistrict,
    269: belizeCayoDistrict,
    266: belizeCorozalDistrict,
    268: belizeOrangeWalkDistrict,
    265: belizeStannCreekDistrict,
    267: belizeToledoDistrict
  };
