/// Access to known geographies in `Gabon` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'gabon_cities.dart';

/// The `Estuaire Province` region in `Gabon`
const Region gabonEstuaireProvince = Region(
  id: 2727,
  parentId: 79,
  longitude: 10.0807298,
  latitude: 0.4432864,
  name: "Estuaire Province",
  type: null,
  stateCode: "1",
  cities: [
    estuaireProvinceCocobeachCity,
    estuaireProvinceLibrevilleCity,
    estuaireProvinceNtoumCity
  ]);

/// The `Haut-Ogooué Province` region in `Gabon`
const Region gabonHautHypogooueProvince = Region(
  id: 2726,
  parentId: 79,
  longitude: 13.914399,
  latitude: -1.4762544,
  name: "Haut-Ogooué Province",
  type: null,
  stateCode: "2",
  cities: [
    hautHypogooueProvinceFrancevilleCity,
    hautHypogooueProvinceLekoniCity,
    hautHypogooueProvinceMoandaCity,
    hautHypogooueProvinceMounanaCity,
    hautHypogooueProvinceOkondjaCity
  ]);

/// The `Moyen-Ogooué Province` region in `Gabon`
const Region gabonMoyenHypogooueProvince = Region(
  id: 2730,
  parentId: 79,
  longitude: 10.439656,
  latitude: -0.442784,
  name: "Moyen-Ogooué Province",
  type: null,
  stateCode: "3",
  cities: [
    moyenHypogooueProvinceLambareneCity,
    moyenHypogooueProvinceNdjoleCity
  ]);

/// The `Ngounié Province` region in `Gabon`
const Region gabonNgounieProvince = Region(
  id: 2731,
  parentId: 79,
  longitude: 10.9807003,
  latitude: -1.4930303,
  name: "Ngounié Province",
  type: null,
  stateCode: "4",
  cities: [
    ngounieProvinceFougamouCity,
    ngounieProvinceMbigouCity,
    ngounieProvinceMimongoCity,
    ngounieProvinceMouilaCity,
    ngounieProvinceNdendeCity
  ]);

/// The `Nyanga Province` region in `Gabon`
const Region gabonNyangaProvince = Region(
  id: 2725,
  parentId: 79,
  longitude: 11.1617356,
  latitude: -2.8821033,
  name: "Nyanga Province",
  type: null,
  stateCode: "5",
  cities: [
    nyangaProvinceMayumbaCity,
    nyangaProvinceTchibangaCity
  ]);

/// The `Ogooué-Ivindo Province` region in `Gabon`
const Region gabonOgooueHypivindoProvince = Region(
  id: 2724,
  parentId: 79,
  longitude: 13.1740348,
  latitude: 0.8818311,
  name: "Ogooué-Ivindo Province",
  type: null,
  stateCode: "6",
  cities: [
    ogooueHypivindoProvinceBooueCity,
    ogooueHypivindoProvinceMakokouCity,
    ogooueHypivindoProvinceZadieCity
  ]);

/// The `Ogooué-Lolo Province` region in `Gabon`
const Region gabonOgooueHyploloProvince = Region(
  id: 2729,
  parentId: 79,
  longitude: 12.4380581,
  latitude: -0.8844093,
  name: "Ogooué-Lolo Province",
  type: null,
  stateCode: "7",
  cities: [
    ogooueHyploloProvinceKoulamoutouCity,
    ogooueHyploloProvinceLastoursvilleCity
  ]);

/// The `Ogooué-Maritime Province` region in `Gabon`
const Region gabonOgooueHypmaritimeProvince = Region(
  id: 2728,
  parentId: 79,
  longitude: 9.7232673,
  latitude: -1.3465975,
  name: "Ogooué-Maritime Province",
  type: null,
  stateCode: "8",
  cities: [
    ogooueHypmaritimeProvinceGambaCity,
    ogooueHypmaritimeProvinceOmboueCity,
    ogooueHypmaritimeProvincePortHypgentilCity
  ]);

/// The `Woleu-Ntem Province` region in `Gabon`
const Region gabonWoleuHypntemProvince = Region(
  id: 2723,
  parentId: 79,
  longitude: 11.4466914,
  latitude: 2.2989827,
  name: "Woleu-Ntem Province",
  type: null,
  stateCode: "9",
  cities: [
    woleuHypntemProvinceBitamCity,
    woleuHypntemProvinceMitzicCity,
    woleuHypntemProvinceOyemCity
  ]);

/// The 9 states of `Gabon` keyed by their id.
const Map<int, Region> gabonStates = <int, Region>{
    2727: gabonEstuaireProvince,
    2726: gabonHautHypogooueProvince,
    2730: gabonMoyenHypogooueProvince,
    2731: gabonNgounieProvince,
    2725: gabonNyangaProvince,
    2724: gabonOgooueHypivindoProvince,
    2729: gabonOgooueHyploloProvince,
    2728: gabonOgooueHypmaritimeProvince,
    2723: gabonWoleuHypntemProvince
  };
