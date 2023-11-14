/// Access to known geographies in `Iceland` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'iceland_cities.dart';

/// The `Capital Region` region in `Iceland`
const Region icelandCapitalRegion = Region(
  id: 3431,
  parentId: 100,
  longitude: -92.1816949,
  latitude: 38.5656957,
  name: "Capital Region",
  type: null,
  stateCode: "1",
  cities: [
    capitalRegionAlftanesCity,
    capitalRegionGarabaerCity,
    capitalRegionHafnarfjorurCity,
    capitalRegionKjosarhreppurCity,
    capitalRegionKopavogurCity,
    capitalRegionMosfellsbaerCity,
    capitalRegionMosfellsbaerCity,
    capitalRegionReykjavikCity,
    capitalRegionSeltjarnarnesCity
  ]);

/// The `Eastern Region` region in `Iceland`
const Region icelandEasternRegion = Region(
  id: 3433,
  parentId: 100,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Eastern Region",
  type: null,
  stateCode: "7",
  cities: [
    easternRegionBorgarfjararhreppurCity,
    easternRegionBreidalshreppurCity,
    easternRegionEgilsstairCity,
    easternRegionEskifjorurCity,
    easternRegionFjarabyggCity,
    easternRegionFljotsdalsheraCity,
    easternRegionFljotsdalshreppurCity,
    easternRegionHofnCity,
    easternRegionNeskaupstaurCity,
    easternRegionReyarfjorurCity
  ]);

/// The `Northeastern Region` region in `Iceland`
const Region icelandNortheasternRegion = Region(
  id: 3437,
  parentId: 100,
  longitude: -74.2179326,
  latitude: 43.2994285,
  name: "Northeastern Region",
  type: null,
  stateCode: "6",
  cities: [
    northeasternRegionAkureyriCity,
    northeasternRegionDalvikCity,
    northeasternRegionDalvikurbyggCity,
    northeasternRegionEyjafjararsveitCity,
    northeasternRegionFjallabyggCity,
    northeasternRegionGrytubakkahreppurCity,
    northeasternRegionHorgarsveitCity,
    northeasternRegionHusavikCity,
    northeasternRegionLanganesbyggCity,
    northeasternRegionLaugarCity,
    northeasternRegionSiglufjorurCity,
    northeasternRegionSkutustaahreppurCity,
    northeasternRegionSvalbarsstrandarhreppurCity,
    northeasternRegionTjorneshreppurCity,
    northeasternRegionThingeyjarsveitCity
  ]);

/// The `Northwestern Region` region in `Iceland`
const Region icelandNorthwesternRegion = Region(
  id: 3435,
  parentId: 100,
  longitude: -73.0471688,
  latitude: 41.9133932,
  name: "Northwestern Region",
  type: null,
  stateCode: "5",
  cities: [
    northwesternRegionAkrahreppurCity,
    northwesternRegionHunathingVestraCity,
    northwesternRegionSauarkrokurCity,
    northwesternRegionSkagabyggCity,
    northwesternRegionSveitarfelagiSkagafjorurCity
  ]);

/// The `Southern Peninsula Region` region in `Iceland`
const Region icelandSouthernPeninsulaRegion = Region(
  id: 3430,
  parentId: 100,
  longitude: -22.3649667,
  latitude: 63.9154803,
  name: "Southern Peninsula Region",
  type: null,
  stateCode: "2",
  cities: [
    southernPeninsulaRegionGarurCity,
    southernPeninsulaRegionGrindavikCity,
    southernPeninsulaRegionKeflavikCity,
    southernPeninsulaRegionReykjanesbaerCity,
    southernPeninsulaRegionSandgeriCity,
    southernPeninsulaRegionVogarCity
  ]);

/// The `Southern Region` region in `Iceland`
const Region icelandSouthernRegion = Region(
  id: 3434,
  parentId: 100,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Southern Region",
  type: null,
  stateCode: "8",
  cities: [
    southernRegionAsahreppurCity,
    southernRegionBlaskogabyggCity,
    southernRegionFloahreppurCity,
    southernRegionGrimsnesHypOgGrafningshreppurCity,
    southernRegionHrunamannahreppurCity,
    southernRegionHverageriCity,
    southernRegionMyrdalshreppurCity,
    southernRegionSelfossCity,
    southernRegionSkaftarhreppurCity,
    southernRegionSkeiaHypOgGnupverjahreppurCity,
    southernRegionVestmannaeyjabaerCity,
    southernRegionVestmannaeyjarCity,
    southernRegionThorlakshofnCity
  ]);

/// The `Western Region` region in `Iceland`
const Region icelandWesternRegion = Region(
  id: 3436,
  parentId: 100,
  longitude: 1.7976931348623157e+308,
  latitude: 1.7976931348623157e+308,
  name: "Western Region",
  type: null,
  stateCode: "3",
  cities: [
    westernRegionAkranesCity,
    westernRegionBorgarbyggCity,
    westernRegionBorgarnesCity,
    westernRegionDalabyggCity,
    westernRegionEyjaHypOgMiklaholtshreppurCity,
    westernRegionHelgafellssveitCity,
    westernRegionHvalfjararsveitCity,
    westernRegionOlafsvikCity,
    westernRegionSkorradalshreppurCity,
    westernRegionSnaefellsbaerCity,
    westernRegionStykkisholmurCity
  ]);

/// The `Westfjords` region in `Iceland`
const Region icelandWestfjords = Region(
  id: 3432,
  parentId: 100,
  longitude: -21.8811764,
  latitude: 65.919615,
  name: "Westfjords",
  type: null,
  stateCode: "4",
  cities: [
    westfjordsIsafjararbaerCity,
    westfjordsIsafjorurCity,
    westfjordsReykholahreppurCity,
    westfjordsStrandabyggCity,
    westfjordsTalknafjararhreppurCity
  ]);

/// The 8 states of `Iceland` keyed by their id.
const Map<int, Region> icelandStates = <int, Region>{
    3431: icelandCapitalRegion,
    3433: icelandEasternRegion,
    3437: icelandNortheasternRegion,
    3435: icelandNorthwesternRegion,
    3430: icelandSouthernPeninsulaRegion,
    3434: icelandSouthernRegion,
    3436: icelandWesternRegion,
    3432: icelandWestfjords
  };
