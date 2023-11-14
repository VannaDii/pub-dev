/// Access to known geographies in `Lebanon` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'lebanon_cities.dart';

/// The `Akkar` region in `Lebanon`
const Region lebanonAkkar = Region(
  id: 2285,
  parentId: 121,
  longitude: 36.1328132,
  latitude: 34.5328763,
  name: "Akkar",
  type: null,
  stateCode: "AK",
  cities: [
    akkarCazaDeAakkarCity
  ]);

/// The `Baalbek-Hermel` region in `Lebanon`
const Region lebanonBaalbekHyphermel = Region(
  id: 2283,
  parentId: 121,
  longitude: 36.3498097,
  latitude: 34.2658556,
  name: "Baalbek-Hermel",
  type: null,
  stateCode: "BH",
  cities: [
    baalbekHyphermelBaalbekCity,
    baalbekHyphermelCazaDeBaalbekCity
  ]);

/// The `Beirut` region in `Lebanon`
const Region lebanonBeirut = Region(
  id: 2286,
  parentId: 121,
  longitude: 35.4954772,
  latitude: 33.8886106,
  name: "Beirut",
  type: null,
  stateCode: "BA",
  cities: [
    beirutBeirutCity,
    beirutRasBayrutCity
  ]);

/// The `Beqaa` region in `Lebanon`
const Region lebanonBeqaa = Region(
  id: 2287,
  parentId: 121,
  longitude: 35.9019489,
  latitude: 33.8462662,
  name: "Beqaa",
  type: null,
  stateCode: "BI",
  cities: [
    beqaaAanjarCity,
    beqaaZahleCity
  ]);

/// The `Mount Lebanon` region in `Lebanon`
const Region lebanonMountLebanon = Region(
  id: 2282,
  parentId: 121,
  longitude: 35.5973139,
  latitude: 33.8100858,
  name: "Mount Lebanon",
  type: null,
  stateCode: "JL",
  cities: [
    mountLebanonBaabdaCity,
    mountLebanonBhamdounCity,
    mountLebanonBhamdounElMhattaCity,
    mountLebanonCazaDeBaabdaCity,
    mountLebanonJbailCity,
    mountLebanonJouniehCity
  ]);

/// The `Nabatieh` region in `Lebanon`
const Region lebanonNabatieh = Region(
  id: 2288,
  parentId: 121,
  longitude: 35.4838293,
  latitude: 33.3771693,
  name: "Nabatieh",
  type: null,
  stateCode: "NA",
  cities: [
    nabatiehAinEbelCity,
    nabatiehCazaDeBentJbailCity,
    nabatiehCazaDeNabatiyeCity,
    nabatiehHabbouchCity,
    nabatiehMarjayounCity,
    nabatiehNabatiyeEtTahtaCity
  ]);

/// The `North` region in `Lebanon`
const Region lebanonNorth = Region(
  id: 2284,
  parentId: 121,
  longitude: 35.8308233,
  latitude: 34.4380625,
  name: "North",
  type: null,
  stateCode: "AS",
  cities: [
    northBatrounCity,
    northBcharreCity,
    northTripoliCity
  ]);

/// The `South` region in `Lebanon`
const Region lebanonSouth = Region(
  id: 2281,
  parentId: 121,
  longitude: 35.2032778,
  latitude: 33.2721479,
  name: "South",
  type: null,
  stateCode: "JA",
  cities: [
    southEnNaqouraCity,
    southGhaziehCity,
    southSidonCity,
    southTyreCity
  ]);

/// The 8 states of `Lebanon` keyed by their id.
const Map<int, Region> lebanonStates = <int, Region>{
    2285: lebanonAkkar,
    2283: lebanonBaalbekHyphermel,
    2286: lebanonBeirut,
    2287: lebanonBeqaa,
    2282: lebanonMountLebanon,
    2288: lebanonNabatieh,
    2284: lebanonNorth,
    2281: lebanonSouth
  };
