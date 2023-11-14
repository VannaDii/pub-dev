/// Access to known geographies in `Singapore` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'singapore_cities.dart';

/// The `Central Singapore` region in `Singapore`
const Region singaporeCentralSingaporeDistrict = Region(
  id: 4651,
  parentId: 199,
  longitude: 103.8535,
  latitude: 1.2884,
  name: "Central Singapore",
  type: "district",
  stateCode: "01",
  cities: [
    centralSingaporeDistrictBukitTimahCity,
    centralSingaporeDistrictDowntownCoreCity,
    centralSingaporeDistrictGeylangCity,
    centralSingaporeDistrictKallangCity,
    centralSingaporeDistrictMarineParadeCity,
    centralSingaporeDistrictNovenaCity,
    centralSingaporeDistrictOrchardRoadCity,
    centralSingaporeDistrictOutramCity,
    centralSingaporeDistrictRochorCity,
    centralSingaporeDistrictSingaporeCity,
    centralSingaporeDistrictTanjongPagarCity,
    centralSingaporeDistrictToaPayohCity
  ]);

/// The `North East` region in `Singapore`
const Region singaporeNorthEastDistrict = Region(
  id: 4649,
  parentId: 199,
  longitude: 103.8972,
  latitude: 1.3824,
  name: "North East",
  type: "district",
  stateCode: "02",
  cities: [
    northEastDistrictAngMoKioCity,
    northEastDistrictHougangCity,
    northEastDistrictPunggolCity,
    northEastDistrictSengkangCity,
    northEastDistrictSerangoonCity
  ]);

/// The `North West` region in `Singapore`
const Region singaporeNorthWestDistrict = Region(
  id: 4653,
  parentId: 199,
  longitude: 103.8275,
  latitude: 1.418,
  name: "North West",
  type: "district",
  stateCode: "03",
  cities: [
    northWestDistrictSembawangCity,
    northWestDistrictWoodlandsCity,
    northWestDistrictYishunCity
  ]);

/// The `South East` region in `Singapore`
const Region singaporeSouthEastDistrict = Region(
  id: 4650,
  parentId: 199,
  longitude: 103.7004,
  latitude: 1.3571,
  name: "South East",
  type: "district",
  stateCode: "04",
  cities: [
    southEastDistrictBedokCity,
    southEastDistrictPasirRisCity,
    southEastDistrictTampinesCity
  ]);

/// The `South West` region in `Singapore`
const Region singaporeSouthWestDistrict = Region(
  id: 4652,
  parentId: 199,
  longitude: 103.9451,
  latitude: 1.3571,
  name: "South West",
  type: "district",
  stateCode: "05",
  cities: [
    southWestDistrictBukitBatokCity,
    southWestDistrictBukitPanjangCity,
    southWestDistrictJurongWestCity
  ]);

/// The 5 states of `Singapore` keyed by their id.
const Map<int, Region> singaporeStates = <int, Region>{
    4651: singaporeCentralSingaporeDistrict,
    4649: singaporeNorthEastDistrict,
    4653: singaporeNorthWestDistrict,
    4650: singaporeSouthEastDistrict,
    4652: singaporeSouthWestDistrict
  };
