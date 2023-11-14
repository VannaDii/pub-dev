/// Access to known geographies in `Congo` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'congo_cities.dart';

/// The `Bouenza Department` region in `Congo`
const Region congoBouenzaDepartment = Region(
  id: 2866,
  parentId: 50,
  longitude: 13.7289167,
  latitude: -4.1128079,
  name: "Bouenza Department",
  type: null,
  stateCode: "11",
  cities: [
    bouenzaDepartmentKayesCity,
    bouenzaDepartmentMadingouCity
  ]);

/// The `Brazzaville` region in `Congo`
const Region congoBrazzaville = Region(
  id: 2870,
  parentId: 50,
  longitude: 15.2428853,
  latitude: -4.2633597,
  name: "Brazzaville",
  type: null,
  stateCode: "BZV",
  cities: [
    brazzavilleBrazzavilleCity
  ]);

/// The `Cuvette Department` region in `Congo`
const Region congoCuvetteDepartment = Region(
  id: 2864,
  parentId: 50,
  longitude: 16.1580937,
  latitude: -0.2877446,
  name: "Cuvette Department",
  type: null,
  stateCode: "8",
  cities: [
    cuvetteDepartmentMakouaCity,
    cuvetteDepartmentOwandoCity
  ]);

/// The `Cuvette-Ouest Department` region in `Congo`
const Region congoCuvetteHypouestDepartment = Region(
  id: 2869,
  parentId: 50,
  longitude: 14.4723301,
  latitude: 0.144755,
  name: "Cuvette-Ouest Department",
  type: null,
  stateCode: "15",
  cities: [
    cuvetteHypouestDepartmentEwoCity
  ]);

/// The `Kouilou Department` region in `Congo`
const Region congoKouilouDepartment = Region(
  id: 2867,
  parentId: 50,
  longitude: 11.8891721,
  latitude: -4.1428413,
  name: "Kouilou Department",
  type: null,
  stateCode: "5",
  cities: []);

/// The `Lékoumou Department` region in `Congo`
const Region congoLekoumouDepartment = Region(
  id: 2868,
  parentId: 50,
  longitude: 13.3587288,
  latitude: -3.170382,
  name: "Lékoumou Department",
  type: null,
  stateCode: "2",
  cities: [
    lekoumouDepartmentSibitiCity
  ]);

/// The `Likouala Department` region in `Congo`
const Region congoLikoualaDepartment = Region(
  id: 2865,
  parentId: 50,
  longitude: 17.668887,
  latitude: 2.043924,
  name: "Likouala Department",
  type: null,
  stateCode: "7",
  cities: [
    likoualaDepartmentImpfondoCity
  ]);

/// The `Niari Department` region in `Congo`
const Region congoNiariDepartment = Region(
  id: 2872,
  parentId: 50,
  longitude: 12.2547919,
  latitude: -3.18427,
  name: "Niari Department",
  type: null,
  stateCode: "9",
  cities: [
    niariDepartmentDolisieCity,
    niariDepartmentMossendjoCity
  ]);

/// The `Plateaux Department` region in `Congo`
const Region congoPlateauxDepartment = Region(
  id: 2862,
  parentId: 50,
  longitude: 15.4068079,
  latitude: -2.0680088,
  name: "Plateaux Department",
  type: null,
  stateCode: "14",
  cities: [
    plateauxDepartmentDjambalaCity,
    plateauxDepartmentGambomaCity
  ]);

/// The `Pointe-Noire` region in `Congo`
const Region congoPointeHypnoire = Region(
  id: 2863,
  parentId: 50,
  longitude: 11.866362,
  latitude: -4.7691623,
  name: "Pointe-Noire",
  type: null,
  stateCode: "16",
  cities: [
    pointeHypnoireLoandjiliCity,
    pointeHypnoirePointeHypnoireCity
  ]);

/// The `Pool Department` region in `Congo`
const Region congoPoolDepartment = Region(
  id: 2873,
  parentId: 50,
  longitude: 14.8454619,
  latitude: -3.7762628,
  name: "Pool Department",
  type: null,
  stateCode: "12",
  cities: [
    poolDepartmentKinkalaCity
  ]);

/// The `Sangha Department` region in `Congo`
const Region congoSanghaDepartment = Region(
  id: 2871,
  parentId: 50,
  longitude: 15.4068079,
  latitude: 1.4662328,
  name: "Sangha Department",
  type: null,
  stateCode: "13",
  cities: [
    sanghaDepartmentOuessoCity,
    sanghaDepartmentSembeCity
  ]);

/// The 12 states of `Congo` keyed by their id.
const Map<int, Region> congoStates = <int, Region>{
    2866: congoBouenzaDepartment,
    2870: congoBrazzaville,
    2864: congoCuvetteDepartment,
    2869: congoCuvetteHypouestDepartment,
    2867: congoKouilouDepartment,
    2868: congoLekoumouDepartment,
    2865: congoLikoualaDepartment,
    2872: congoNiariDepartment,
    2862: congoPlateauxDepartment,
    2863: congoPointeHypnoire,
    2873: congoPoolDepartment,
    2871: congoSanghaDepartment
  };
