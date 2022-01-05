/// Access to known geographies in Eritrea and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'eritrea_cities.dart';

/// The 6 regions of `🇪🇷 Eritrea`
const Region eritreaAnsebaRegion = Region(id: 3425, parentId: 68, longitude: 37.8087693, latitude: 16.4745531,
          name: "Anseba Region", type: null, stateCode: "AN",
          cities: [
            eritreaAnsebaRegionKeren
          ]);
const Region eritreaDebubRegion = Region(id: 3427, parentId: 68, longitude: 39.1543677, latitude: 14.9478692,
          name: "Debub Region", type: null, stateCode: "DU",
          cities: [
            eritreaDebubRegionAdiKeyh,
            eritreaDebubRegionDekemhare,
            eritreaDebubRegionMendefera
          ]);
const Region eritreaGashHypBarkaRegion = Region(id: 3428, parentId: 68, longitude: 37.6386622, latitude: 15.4068825,
          name: "Gash-Barka Region", type: null, stateCode: "GB",
          cities: [
            eritreaGashHypBarkaRegionAkordat,
            eritreaGashHypBarkaRegionBarentu,
            eritreaGashHypBarkaRegionTeseney
          ]);
const Region eritreaMaekelRegion = Region(id: 3426, parentId: 68, longitude: 38.8623683, latitude: 15.3551409,
          name: "Maekel Region", type: null, stateCode: "MA",
          cities: [
            eritreaMaekelRegionAsmara
          ]);
const Region eritreaNorthernRedSeaRegion = Region(id: 3424, parentId: 68, longitude: 38.8205454, latitude: 16.2583997,
          name: "Northern Red Sea Region", type: null, stateCode: "SK",
          cities: [
            eritreaNorthernRedSeaRegionMassawa
          ]);
const Region eritreaSouthernRedSeaRegion = Region(id: 3429, parentId: 68, longitude: 41.7606472, latitude: 13.5137103,
          name: "Southern Red Sea Region", type: null, stateCode: "DK",
          cities: [
            eritreaSouthernRedSeaRegionAssab,
            eritreaSouthernRedSeaRegionEdd
          ]);

const eritreaStates = <int, Region>{
    3425: eritreaAnsebaRegion,
    3427: eritreaDebubRegion,
    3428: eritreaGashHypBarkaRegion,
    3426: eritreaMaekelRegion,
    3424: eritreaNorthernRedSeaRegion,
    3429: eritreaSouthernRedSeaRegion
  };
