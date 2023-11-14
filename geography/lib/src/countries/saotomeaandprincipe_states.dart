/// Access to known geographies in `Sao Tome and Principe` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'saotomeaandprincipe_cities.dart';

/// The `Príncipe Province` region in `Sao Tome and Principe`
const Region saoTomeAndPrincipePrincipeProvince = Region(
  id: 270,
  parentId: 193,
  longitude: 7.4056928,
  latitude: 1.6139381,
  name: "Príncipe Province",
  type: null,
  stateCode: "P",
  cities: [
    principeProvinceSantoAntonioCity
  ]);

/// The `São Tomé Province` region in `Sao Tome and Principe`
const Region saoTomeAndPrincipeSaoTomeProvince = Region(
  id: 271,
  parentId: 193,
  longitude: 6.733343,
  latitude: 0.3301924,
  name: "São Tomé Province",
  type: null,
  stateCode: "S",
  cities: [
    saoTomeProvinceCantagaloDistrictCity,
    saoTomeProvinceCaueDistrictCity,
    saoTomeProvinceSaoTomeCity,
    saoTomeProvinceTrindadeCity
  ]);

/// The 2 states of `Sao Tome and Principe` keyed by their id.
const Map<int, Region> saoTomeAndPrincipeStates = <int, Region>{
    270: saoTomeAndPrincipePrincipeProvince,
    271: saoTomeAndPrincipeSaoTomeProvince
  };
