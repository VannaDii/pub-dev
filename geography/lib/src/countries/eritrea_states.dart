/// Access to known geographies in `Eritrea` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'eritrea_cities.dart';

/// The `Anseba Region` region in `Eritrea`
const Region eritreaAnsebaRegion = Region(
  id: 3425,
  parentId: 68,
  longitude: 37.8087693,
  latitude: 16.4745531,
  name: "Anseba Region",
  type: null,
  stateCode: "AN",
  cities: [
    ansebaRegionKerenCity
  ]);

/// The `Debub Region` region in `Eritrea`
const Region eritreaDebubRegion = Region(
  id: 3427,
  parentId: 68,
  longitude: 39.1543677,
  latitude: 14.9478692,
  name: "Debub Region",
  type: null,
  stateCode: "DU",
  cities: [
    debubRegionAdiKeyhCity,
    debubRegionDekemhareCity,
    debubRegionMendeferaCity
  ]);

/// The `Gash-Barka Region` region in `Eritrea`
const Region eritreaGashHypbarkaRegion = Region(
  id: 3428,
  parentId: 68,
  longitude: 37.6386622,
  latitude: 15.4068825,
  name: "Gash-Barka Region",
  type: null,
  stateCode: "GB",
  cities: [
    gashHypbarkaRegionAkordatCity,
    gashHypbarkaRegionBarentuCity,
    gashHypbarkaRegionTeseneyCity
  ]);

/// The `Maekel Region` region in `Eritrea`
const Region eritreaMaekelRegion = Region(
  id: 3426,
  parentId: 68,
  longitude: 38.8623683,
  latitude: 15.3551409,
  name: "Maekel Region",
  type: null,
  stateCode: "MA",
  cities: [
    maekelRegionAsmaraCity
  ]);

/// The `Northern Red Sea Region` region in `Eritrea`
const Region eritreaNorthernRedSeaRegion = Region(
  id: 3424,
  parentId: 68,
  longitude: 38.8205454,
  latitude: 16.2583997,
  name: "Northern Red Sea Region",
  type: null,
  stateCode: "SK",
  cities: [
    northernRedSeaRegionMassawaCity
  ]);

/// The `Southern Red Sea Region` region in `Eritrea`
const Region eritreaSouthernRedSeaRegion = Region(
  id: 3429,
  parentId: 68,
  longitude: 41.7606472,
  latitude: 13.5137103,
  name: "Southern Red Sea Region",
  type: null,
  stateCode: "DK",
  cities: [
    southernRedSeaRegionAssabCity,
    southernRedSeaRegionEddCity
  ]);

/// The 6 states of `Eritrea` keyed by their id.
const Map<int, Region> eritreaStates = <int, Region>{
    3425: eritreaAnsebaRegion,
    3427: eritreaDebubRegion,
    3428: eritreaGashHypbarkaRegion,
    3426: eritreaMaekelRegion,
    3424: eritreaNorthernRedSeaRegion,
    3429: eritreaSouthernRedSeaRegion
  };
