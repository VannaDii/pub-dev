/// Access to known geographies in Djibouti and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'djibouti_cities.dart';

/// The 6 regions of `🇩🇯 Djibouti`
const Region djiboutiAliSabiehRegion = Region(
    id: 2933,
    parentId: 60,
    longitude: 42.941698,
    latitude: 11.1928973,
    name: "Ali Sabieh Region",
    type: null,
    stateCode: "AS",
    cities: [
      djiboutiAliSabiehRegionAliSabieh,
      djiboutiAliSabiehRegionGoubetto,
      djiboutiAliSabiehRegionHolhol
    ]);
const Region djiboutiArtaRegion = Region(
    id: 2932,
    parentId: 60,
    longitude: 42.8479474,
    latitude: 11.5255528,
    name: "Arta Region",
    type: null,
    stateCode: "AR",
    cities: [djiboutiArtaRegionArta]);
const Region djiboutiDikhilRegion = Region(
    id: 2930,
    parentId: 60,
    longitude: 42.3704744,
    latitude: 11.1054336,
    name: "Dikhil Region",
    type: null,
    stateCode: "DI",
    cities: [djiboutiDikhilRegionDikhil, djiboutiDikhilRegionGalafi]);
const Region djiboutiDjibouti = Region(
    id: 2929,
    parentId: 60,
    longitude: 42.590275,
    latitude: 11.825138,
    name: "Djibouti",
    type: null,
    stateCode: "DJ",
    cities: [djiboutiDjiboutiDjibouti, djiboutiDjiboutiLoyada]);
const Region djiboutiObockRegion = Region(
    id: 2928,
    parentId: 60,
    longitude: 43.0194897,
    latitude: 12.3895691,
    name: "Obock Region",
    type: null,
    stateCode: "OB",
    cities: [djiboutiObockRegionAlailiDadda, djiboutiObockRegionObock]);
const Region djiboutiTadjourahRegion = Region(
    id: 2931,
    parentId: 60,
    longitude: 42.3938375,
    latitude: 11.9338885,
    name: "Tadjourah Region",
    type: null,
    stateCode: "TA",
    cities: [djiboutiTadjourahRegionDorra, djiboutiTadjourahRegionTadjourah]);

const djiboutiStates = <int, Region>{
  2933: djiboutiAliSabiehRegion,
  2932: djiboutiArtaRegion,
  2930: djiboutiDikhilRegion,
  2929: djiboutiDjibouti,
  2928: djiboutiObockRegion,
  2931: djiboutiTadjourahRegion
};
