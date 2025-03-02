/// Access to known geographies in `Madagascar` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'madagascar_cities.dart';

/// The `Antananarivo Province` region in `Madagascar`
const Region madagascarAntananarivoProvince = Region(
  id: 2951,
  parentId: 130,
  longitude: 46.8252838,
  latitude: -18.7051474,
  name: "Antananarivo Province",
  type: null,
  stateCode: "T",
  cities: []);

/// The `Antsiranana Province` region in `Madagascar`
const Region madagascarAntsirananaProvince = Region(
  id: 2950,
  parentId: 130,
  longitude: 49.5279996,
  latitude: -13.771539,
  name: "Antsiranana Province",
  type: null,
  stateCode: "D",
  cities: [
    antsirananaProvinceAmpasimanolotraCity,
    antsirananaProvinceAndovorantoCity,
    antsirananaProvinceMahanoroCity,
    antsirananaProvinceMahavelonaCity,
    antsirananaProvinceMarolamboCity,
    antsirananaProvinceToamasinaCity,
    antsirananaProvinceToamasinaICity,
    antsirananaProvinceToamasinaIiCity,
    antsirananaProvinceVohibinanyCity
  ]);

/// The `Fianarantsoa Province` region in `Madagascar`
const Region madagascarFianarantsoaProvince = Region(
  id: 2948,
  parentId: 130,
  longitude: 46.8252838,
  latitude: -22.353624,
  name: "Fianarantsoa Province",
  type: null,
  stateCode: "F",
  cities: []);

/// The `Mahajanga Province` region in `Madagascar`
const Region madagascarMahajangaProvince = Region(
  id: 2953,
  parentId: 130,
  longitude: 46.516262,
  latitude: -16.523883,
  name: "Mahajanga Province",
  type: null,
  stateCode: "M",
  cities: []);

/// The `Toamasina Province` region in `Madagascar`
const Region madagascarToamasinaProvince = Region(
  id: 2952,
  parentId: 130,
  longitude: 49.3957836,
  latitude: -18.1442811,
  name: "Toamasina Province",
  type: null,
  stateCode: "A",
  cities: []);

/// The `Toliara Province` region in `Madagascar`
const Region madagascarToliaraProvince = Region(
  id: 2949,
  parentId: 130,
  longitude: 43.6854936,
  latitude: -23.3516191,
  name: "Toliara Province",
  type: null,
  stateCode: "U",
  cities: []);

/// The 6 states of `Madagascar` keyed by their id.
const Map<int, Region> madagascarStates = <int, Region>{
    2951: madagascarAntananarivoProvince,
    2950: madagascarAntsirananaProvince,
    2948: madagascarFianarantsoaProvince,
    2953: madagascarMahajangaProvince,
    2952: madagascarToamasinaProvince,
    2949: madagascarToliaraProvince
  };
