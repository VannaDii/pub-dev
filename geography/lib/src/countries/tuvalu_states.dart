/// Access to known geographies in `Tuvalu` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'tuvalu_cities.dart';

/// The `Funafuti` region in `Tuvalu`
const Region tuvaluFunafuti = Region(
  id: 3951,
  parentId: 228,
  longitude: 179.1961926,
  latitude: -8.5211471,
  name: "Funafuti",
  type: null,
  stateCode: "FUN",
  cities: [
    funafutiAlapiVillageCity,
    funafutiFakaifouVillageCity,
    funafutiFunafutiCity
  ]);

/// The `Nanumanga` region in `Tuvalu`
const Region tuvaluNanumanga = Region(
  id: 3947,
  parentId: 228,
  longitude: 176.319928,
  latitude: -6.2858019,
  name: "Nanumanga",
  type: null,
  stateCode: "NMG",
  cities: [
    nanumangaTogaVillageCity
  ]);

/// The `Nanumea` region in `Tuvalu`
const Region tuvaluNanumea = Region(
  id: 3949,
  parentId: 228,
  longitude: 176.1370148,
  latitude: -5.6881617,
  name: "Nanumea",
  type: null,
  stateCode: "NMA",
  cities: []);

/// The `Niutao Island Council` region in `Tuvalu`
const Region tuvaluNiutaoIslandCouncil = Region(
  id: 3946,
  parentId: 228,
  longitude: 177.3438429,
  latitude: -6.1064258,
  name: "Niutao Island Council",
  type: null,
  stateCode: "NIT",
  cities: [
    niutaoIslandCouncilKuliaVillageCity,
    niutaoIslandCouncilNiulakitaCity
  ]);

/// The `Nui` region in `Tuvalu`
const Region tuvaluNui = Region(
  id: 3948,
  parentId: 228,
  longitude: 177.1485232,
  latitude: -7.2388768,
  name: "Nui",
  type: null,
  stateCode: "NUI",
  cities: [
    nuiTanrakeVillageCity
  ]);

/// The `Nukufetau` region in `Tuvalu`
const Region tuvaluNukufetau = Region(
  id: 3952,
  parentId: 228,
  longitude: 178.5,
  latitude: -8.0,
  name: "Nukufetau",
  type: null,
  stateCode: "NKF",
  cities: [
    nukufetauSavaveVillageCity
  ]);

/// The `Nukulaelae` region in `Tuvalu`
const Region tuvaluNukulaelae = Region(
  id: 3953,
  parentId: 228,
  longitude: 179.852222,
  latitude: -9.381111,
  name: "Nukulaelae",
  type: null,
  stateCode: "NKL",
  cities: []);

/// The `Vaitupu` region in `Tuvalu`
const Region tuvaluVaitupu = Region(
  id: 3950,
  parentId: 228,
  longitude: 178.6747675,
  latitude: -7.4767327,
  name: "Vaitupu",
  type: null,
  stateCode: "VAI",
  cities: [
    vaitupuAsauVillageCity
  ]);

/// The 8 states of `Tuvalu` keyed by their id.
const Map<int, Region> tuvaluStates = <int, Region>{
    3951: tuvaluFunafuti,
    3947: tuvaluNanumanga,
    3949: tuvaluNanumea,
    3946: tuvaluNiutaoIslandCouncil,
    3948: tuvaluNui,
    3952: tuvaluNukufetau,
    3953: tuvaluNukulaelae,
    3950: tuvaluVaitupu
  };
