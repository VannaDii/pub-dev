/// Access to known geographies in `Togo` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'togo_cities.dart';

/// The `Centrale Region` region in `Togo`
const Region togoCentraleRegion = Region(
  id: 2575,
  parentId: 220,
  longitude: 1.0586135,
  latitude: 8.6586029,
  name: "Centrale Region",
  type: null,
  stateCode: "C",
  cities: [
    centraleRegionSokodeCity,
    centraleRegionSotoubouaCity,
    centraleRegionTchambaCity
  ]);

/// The `Kara Region` region in `Togo`
const Region togoKaraRegion = Region(
  id: 2579,
  parentId: 220,
  longitude: 1.0586135,
  latitude: 9.7216393,
  name: "Kara Region",
  type: null,
  stateCode: "K",
  cities: [
    karaRegionBafiloCity,
    karaRegionBassarCity,
    karaRegionKandeCity,
    karaRegionKaraCity,
    karaRegionNiamtougouCity,
    karaRegionPagoudaCity,
    karaRegionPrefectureDeBassarCity
  ]);

/// The `Maritime` region in `Togo`
const Region togoMaritime = Region(
  id: 2576,
  parentId: 220,
  longitude: -83.5278467,
  latitude: 41.6551493,
  name: "Maritime",
  type: null,
  stateCode: "M",
  cities: [
    maritimeAnehoCity,
    maritimeLomeCity,
    maritimeTabligboCity,
    maritimeTsevieCity,
    maritimeVoganCity
  ]);

/// The `Plateaux Region` region in `Togo`
const Region togoPlateauxRegion = Region(
  id: 2577,
  parentId: 220,
  longitude: 1.0586135,
  latitude: 7.6101378,
  name: "Plateaux Region",
  type: null,
  stateCode: "P",
  cities: [
    plateauxRegionAmlameCity,
    plateauxRegionAtakpameCity,
    plateauxRegionBadouCity,
    plateauxRegionKpalimeCity,
    plateauxRegionNotseCity
  ]);

/// The `Savanes Region` region in `Togo`
const Region togoSavanesRegion = Region(
  id: 2578,
  parentId: 220,
  longitude: 0.5257823,
  latitude: 10.5291781,
  name: "Savanes Region",
  type: null,
  stateCode: "S",
  cities: [
    savanesRegionDapaongCity,
    savanesRegionSansanneHypmangoCity
  ]);

/// The 5 states of `Togo` keyed by their id.
const Map<int, Region> togoStates = <int, Region>{
    2575: togoCentraleRegion,
    2579: togoKaraRegion,
    2576: togoMaritime,
    2577: togoPlateauxRegion,
    2578: togoSavanesRegion
  };
