/// Access to known geographies in Sao Tome and Principe and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'sao_tome_and_principe_cities.dart';

/// The 2 regions of `🇸🇹 Sao Tome and Principe`
const Region saoTomeAandPrincipePrincipeProvince = Region(
    id: 270,
    parentId: 193,
    longitude: 7.4056928,
    latitude: 1.6139381,
    name: "Príncipe Province",
    type: null,
    stateCode: "P",
    cities: [saoTomeAandPrincipePrincipeProvinceSantoAntonio]);
const Region saoTomeAandPrincipeSaoTomeProvince = Region(
    id: 271,
    parentId: 193,
    longitude: 6.733343,
    latitude: 0.3301924,
    name: "São Tomé Province",
    type: null,
    stateCode: "S",
    cities: [
      saoTomeAandPrincipeSaoTomeProvinceCantagaloDistrict,
      saoTomeAandPrincipeSaoTomeProvinceCaueDistrict,
      saoTomeAandPrincipeSaoTomeProvinceSaoTome,
      saoTomeAandPrincipeSaoTomeProvinceTrindade
    ]);

const saoTomeAandPrincipeStates = <int, Region>{
  270: saoTomeAandPrincipePrincipeProvince,
  271: saoTomeAandPrincipeSaoTomeProvince
};
