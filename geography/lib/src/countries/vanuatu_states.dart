/// Access to known geographies in `Vanuatu` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'vanuatu_cities.dart';

/// The `Malampa` region in `Vanuatu`
const Region vanuatuMalampa = Region(
  id: 4775,
  parentId: 237,
  longitude: 167.6077865,
  latitude: -16.4011405,
  name: "Malampa",
  type: null,
  stateCode: "MAP",
  cities: [
    malampaLakatoroCity,
    malampaNorsupCity
  ]);

/// The `Penama` region in `Vanuatu`
const Region vanuatuPenama = Region(
  id: 4773,
  parentId: 237,
  longitude: 167.9053182,
  latitude: -15.3795758,
  name: "Penama",
  type: null,
  stateCode: "PAM",
  cities: []);

/// The `Sanma` region in `Vanuatu`
const Region vanuatuSanma = Region(
  id: 4776,
  parentId: 237,
  longitude: 166.9182097,
  latitude: -15.4840017,
  name: "Sanma",
  type: null,
  stateCode: "SAM",
  cities: [
    sanmaLuganvilleCity,
    sanmaPortHypolryCity
  ]);

/// The `Shefa` region in `Vanuatu`
const Region vanuatuShefa = Region(
  id: 4774,
  parentId: 237,
  longitude: 35.169971,
  latitude: 32.805765,
  name: "Shefa",
  type: null,
  stateCode: "SEE",
  cities: [
    shefaPortHypvilaCity
  ]);

/// The `Tafea` region in `Vanuatu`
const Region vanuatuTafea = Region(
  id: 4777,
  parentId: 237,
  longitude: 169.0645056,
  latitude: -18.7237827,
  name: "Tafea",
  type: null,
  stateCode: "TAE",
  cities: [
    tafeaIsangelCity
  ]);

/// The `Torba` region in `Vanuatu`
const Region vanuatuTorba = Region(
  id: 4772,
  parentId: 237,
  longitude: 27.456573,
  latitude: 37.07653,
  name: "Torba",
  type: null,
  stateCode: "TOB",
  cities: [
    torbaSolaCity
  ]);

/// The 6 states of `Vanuatu` keyed by their id.
const Map<int, Region> vanuatuStates = <int, Region>{
    4775: vanuatuMalampa,
    4773: vanuatuPenama,
    4776: vanuatuSanma,
    4774: vanuatuShefa,
    4777: vanuatuTafea,
    4772: vanuatuTorba
  };
