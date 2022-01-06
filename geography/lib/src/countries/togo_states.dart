/// Access to known geographies in Togo and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'togo_cities.dart';

/// The 5 regions of `🇹🇬 Togo`
const Region togoCentraleRegion = Region(
    id: 2575,
    parentId: 220,
    longitude: 1.0586135,
    latitude: 8.6586029,
    name: "Centrale Region",
    type: null,
    stateCode: "C",
    cities: [
      togoCentraleRegionSokode,
      togoCentraleRegionSotouboua,
      togoCentraleRegionTchamba
    ]);
const Region togoKaraRegion = Region(
    id: 2579,
    parentId: 220,
    longitude: 1.0586135,
    latitude: 9.7216393,
    name: "Kara Region",
    type: null,
    stateCode: "K",
    cities: [
      togoKaraRegionBafilo,
      togoKaraRegionBassar,
      togoKaraRegionKande,
      togoKaraRegionKara,
      togoKaraRegionNiamtougou,
      togoKaraRegionPagouda,
      togoKaraRegionPrefectureDdeBassar
    ]);
const Region togoMaritime = Region(
    id: 2576,
    parentId: 220,
    longitude: -83.5278467,
    latitude: 41.6551493,
    name: "Maritime",
    type: null,
    stateCode: "M",
    cities: [
      togoMaritimeAneho,
      togoMaritimeLome,
      togoMaritimeTabligbo,
      togoMaritimeTsevie,
      togoMaritimeVogan
    ]);
const Region togoPlateauxRegion = Region(
    id: 2577,
    parentId: 220,
    longitude: 1.0586135,
    latitude: 7.6101378,
    name: "Plateaux Region",
    type: null,
    stateCode: "P",
    cities: [
      togoPlateauxRegionAmlame,
      togoPlateauxRegionAtakpame,
      togoPlateauxRegionBadou,
      togoPlateauxRegionKpalime,
      togoPlateauxRegionNotse
    ]);
const Region togoSavanesRegion = Region(
    id: 2578,
    parentId: 220,
    longitude: 0.5257823,
    latitude: 10.5291781,
    name: "Savanes Region",
    type: null,
    stateCode: "S",
    cities: [togoSavanesRegionDapaong, togoSavanesRegionSansanneHypMango]);

const togoStates = <int, Region>{
  2575: togoCentraleRegion,
  2579: togoKaraRegion,
  2576: togoMaritime,
  2577: togoPlateauxRegion,
  2578: togoSavanesRegion
};
