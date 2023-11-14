/// Access to known geographies in `Mali` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'mali_cities.dart';

/// The `Bamako` region in `Mali`
const Region maliBamako = Region(
  id: 253,
  parentId: 134,
  longitude: -8.0028892,
  latitude: 12.6392316,
  name: "Bamako",
  type: null,
  stateCode: "BKO",
  cities: [
    bamakoBamakoCity
  ]);

/// The `Gao Region` region in `Mali`
const Region maliGaoRegion = Region(
  id: 258,
  parentId: 134,
  longitude: 1.5208624,
  latitude: 16.9066332,
  name: "Gao Region",
  type: null,
  stateCode: "7",
  cities: [
    gaoRegionAnsongoCity,
    gaoRegionCercleDeBouremCity,
    gaoRegionGaoCity,
    gaoRegionGaoCercleCity,
    gaoRegionInekarCity
  ]);

/// The `Kayes Region` region in `Mali`
const Region maliKayesRegion = Region(
  id: 252,
  parentId: 134,
  longitude: -9.9018131,
  latitude: 14.0818308,
  name: "Kayes Region",
  type: null,
  stateCode: "1",
  cities: [
    kayesRegionBafoulabeCity,
    kayesRegionKayesCity,
    kayesRegionKitaCity,
    kayesRegionKokofataCity,
    kayesRegionSagaloCity
  ]);

/// The `Kidal Region` region in `Mali`
const Region maliKidalRegion = Region(
  id: 257,
  parentId: 134,
  longitude: 1.8318334,
  latitude: 18.7986832,
  name: "Kidal Region",
  type: null,
  stateCode: "8",
  cities: [
    kidalRegionAbeibaraCity,
    kidalRegionCercleDabeibaraCity,
    kidalRegionKidalCity
  ]);

/// The `Koulikoro Region` region in `Mali`
const Region maliKoulikoroRegion = Region(
  id: 250,
  parentId: 134,
  longitude: -7.4381355,
  latitude: 13.8018074,
  name: "Koulikoro Region",
  type: null,
  stateCode: "2",
  cities: [
    koulikoroRegionBanambaCity,
    koulikoroRegionKangabaCity,
    koulikoroRegionKatiCity,
    koulikoroRegionKolokaniCity,
    koulikoroRegionKoulikoroCity
  ]);

/// The `Ménaka Region` region in `Mali`
const Region maliMenakaRegion = Region(
  id: 251,
  parentId: 134,
  longitude: 2.396174,
  latitude: 15.9156421,
  name: "Ménaka Region",
  type: null,
  stateCode: "9",
  cities: []);

/// The `Mopti Region` region in `Mali`
const Region maliMoptiRegion = Region(
  id: 255,
  parentId: 134,
  longitude: -3.4195527,
  latitude: 14.6338039,
  name: "Mopti Region",
  type: null,
  stateCode: "5",
  cities: [
    moptiRegionBandiagaraCity,
    moptiRegionDjenneCity,
    moptiRegionDouentzaCity,
    moptiRegionDouentzaCercleCity,
    moptiRegionMoptiCity,
    moptiRegionTenenkouCity
  ]);

/// The `Ségou Region` region in `Mali`
const Region maliSegouRegion = Region(
  id: 249,
  parentId: 134,
  longitude: -6.0679194,
  latitude: 13.8394456,
  name: "Ségou Region",
  type: null,
  stateCode: "4",
  cities: [
    segouRegionBaroueliCity,
    segouRegionCercleDeSanCity,
    segouRegionKeHypmacinaCity,
    segouRegionKinmparanaCity,
    segouRegionMarkalaCity,
    segouRegionSanCity,
    segouRegionSegouCity,
    segouRegionSokoloCity
  ]);

/// The `Sikasso Region` region in `Mali`
const Region maliSikassoRegion = Region(
  id: 254,
  parentId: 134,
  longitude: -7.4381355,
  latitude: 10.8905186,
  name: "Sikasso Region",
  type: null,
  stateCode: "3",
  cities: [
    sikassoRegionBougouniCity,
    sikassoRegionKolondiebaCity,
    sikassoRegionKoutialaCity,
    sikassoRegionKoutialaCercleCity,
    sikassoRegionNtossoniCity,
    sikassoRegionSikassoCity,
    sikassoRegionYorossoCity
  ]);

/// The `Taoudénit Region` region in `Mali`
const Region maliTaoudenitRegion = Region(
  id: 256,
  parentId: 134,
  longitude: -3.9789143,
  latitude: 22.6764132,
  name: "Taoudénit Region",
  type: null,
  stateCode: "10",
  cities: []);

/// The `Tombouctou Region` region in `Mali`
const Region maliTombouctouRegion = Region(
  id: 248,
  parentId: 134,
  longitude: -3.743509,
  latitude: 21.0526706,
  name: "Tombouctou Region",
  type: null,
  stateCode: "6",
  cities: [
    tombouctouRegionAraouaneCity,
    tombouctouRegionCercleDeGoundamCity,
    tombouctouRegionDireCity,
    tombouctouRegionGoundamCity,
    tombouctouRegionGourmaHyprharousCercleCity,
    tombouctouRegionNiafunkeCity,
    tombouctouRegionTimbuktuCity
  ]);

/// The 11 states of `Mali` keyed by their id.
const Map<int, Region> maliStates = <int, Region>{
    253: maliBamako,
    258: maliGaoRegion,
    252: maliKayesRegion,
    257: maliKidalRegion,
    250: maliKoulikoroRegion,
    251: maliMenakaRegion,
    255: maliMoptiRegion,
    249: maliSegouRegion,
    254: maliSikassoRegion,
    256: maliTaoudenitRegion,
    248: maliTombouctouRegion
  };
