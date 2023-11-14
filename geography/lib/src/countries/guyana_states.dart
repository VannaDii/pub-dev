/// Access to known geographies in `Guyana` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'guyana_cities.dart';

/// The `Barima-Waini` region in `Guyana`
const Region guyanaBarimaHypwaini = Region(
  id: 2764,
  parentId: 94,
  longitude: -59.6564494,
  latitude: 7.4882419,
  name: "Barima-Waini",
  type: null,
  stateCode: "BA",
  cities: [
    barimaHypwainiMabarumaCity
  ]);

/// The `Cuyuni-Mazaruni` region in `Guyana`
const Region guyanaCuyuniHypmazaruni = Region(
  id: 2760,
  parentId: 94,
  longitude: -60.2110752,
  latitude: 6.4642141,
  name: "Cuyuni-Mazaruni",
  type: null,
  stateCode: "CU",
  cities: [
    cuyuniHypmazaruniBarticaCity
  ]);

/// The `Demerara-Mahaica` region in `Guyana`
const Region guyanaDemeraraHypmahaica = Region(
  id: 2767,
  parentId: 94,
  longitude: -58.0982046,
  latitude: 6.546426,
  name: "Demerara-Mahaica",
  type: null,
  stateCode: "DE",
  cities: [
    demeraraHypmahaicaGeorgetownCity,
    demeraraHypmahaicaMahaicaVillageCity
  ]);

/// The `East Berbice-Corentyne` region in `Guyana`
const Region guyanaEastBerbiceHypcorentyne = Region(
  id: 2766,
  parentId: 94,
  longitude: -57.4627259,
  latitude: 2.7477922,
  name: "East Berbice-Corentyne",
  type: null,
  stateCode: "EB",
  cities: [
    eastBerbiceHypcorentyneNewAmsterdamCity,
    eastBerbiceHypcorentyneSkeldonCity
  ]);

/// The `Essequibo Islands-West Demerara` region in `Guyana`
const Region guyanaEssequiboIslandsHypwestDemerara = Region(
  id: 2768,
  parentId: 94,
  longitude: -58.4629997,
  latitude: 6.5720132,
  name: "Essequibo Islands-West Demerara",
  type: null,
  stateCode: "ES",
  cities: [
    essequiboIslandsHypwestDemeraraParikaCity,
    essequiboIslandsHypwestDemeraraVreedHypenHyphoopCity
  ]);

/// The `Mahaica-Berbice` region in `Guyana`
const Region guyanaMahaicaHypberbice = Region(
  id: 2762,
  parentId: 94,
  longitude: -57.9162555,
  latitude: 6.238496,
  name: "Mahaica-Berbice",
  type: null,
  stateCode: "MA",
  cities: [
    mahaicaHypberbiceMahaiconyVillageCity,
    mahaicaHypberbiceRosignolCity
  ]);

/// The `Pomeroon-Supenaam` region in `Guyana`
const Region guyanaPomeroonHypsupenaam = Region(
  id: 2765,
  parentId: 94,
  longitude: -58.9206295,
  latitude: 7.1294166,
  name: "Pomeroon-Supenaam",
  type: null,
  stateCode: "PM",
  cities: [
    pomeroonHypsupenaamAnnaReginaCity
  ]);

/// The `Potaro-Siparuni` region in `Guyana`
const Region guyanaPotaroHypsiparuni = Region(
  id: 2761,
  parentId: 94,
  longitude: -59.2879977,
  latitude: 4.7855853,
  name: "Potaro-Siparuni",
  type: null,
  stateCode: "PT",
  cities: [
    potaroHypsiparuniMahdiaCity
  ]);

/// The `Upper Demerara-Berbice` region in `Guyana`
const Region guyanaUpperDemeraraHypberbice = Region(
  id: 2763,
  parentId: 94,
  longitude: -58.1892921,
  latitude: 5.3064879,
  name: "Upper Demerara-Berbice",
  type: null,
  stateCode: "UD",
  cities: [
    upperDemeraraHypberbiceLindenCity
  ]);

/// The `Upper Takutu-Upper Essequibo` region in `Guyana`
const Region guyanaUpperTakutuHypupperEssequibo = Region(
  id: 2769,
  parentId: 94,
  longitude: -58.7373634,
  latitude: 2.9239595,
  name: "Upper Takutu-Upper Essequibo",
  type: null,
  stateCode: "UT",
  cities: [
    upperTakutuHypupperEssequiboLethemCity
  ]);

/// The 10 states of `Guyana` keyed by their id.
const Map<int, Region> guyanaStates = <int, Region>{
    2764: guyanaBarimaHypwaini,
    2760: guyanaCuyuniHypmazaruni,
    2767: guyanaDemeraraHypmahaica,
    2766: guyanaEastBerbiceHypcorentyne,
    2768: guyanaEssequiboIslandsHypwestDemerara,
    2762: guyanaMahaicaHypberbice,
    2765: guyanaPomeroonHypsupenaam,
    2761: guyanaPotaroHypsiparuni,
    2763: guyanaUpperDemeraraHypberbice,
    2769: guyanaUpperTakutuHypupperEssequibo
  };
