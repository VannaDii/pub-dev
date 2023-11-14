/// Access to known geographies in `Qatar` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'qatar_cities.dart';

/// The `Al Daayen` region in `Qatar`
const Region qatarAlDaayen = Region(
  id: 3182,
  parentId: 179,
  longitude: 51.4821387,
  latitude: 25.5784559,
  name: "Al Daayen",
  type: null,
  stateCode: "ZA",
  cities: []);

/// The `Al Khor` region in `Qatar`
const Region qatarAlKhor = Region(
  id: 3183,
  parentId: 179,
  longitude: 51.4968502,
  latitude: 25.6804078,
  name: "Al Khor",
  type: null,
  stateCode: "KH",
  cities: [
    alKhorAlGhuwayriyahCity,
    alKhorAlKhawrCity
  ]);

/// The `Al Rayyan Municipality` region in `Qatar`
const Region qatarAlRayyanMunicipality = Region(
  id: 3177,
  parentId: 179,
  longitude: 51.4388713,
  latitude: 25.2522551,
  name: "Al Rayyan Municipality",
  type: null,
  stateCode: "RA",
  cities: [
    alRayyanMunicipalityArRayyanCity,
    alRayyanMunicipalityUmmBabCity
  ]);

/// The `Al Wakrah` region in `Qatar`
const Region qatarAlWakrah = Region(
  id: 3179,
  parentId: 179,
  longitude: 51.5975524,
  latitude: 25.1659314,
  name: "Al Wakrah",
  type: null,
  stateCode: "WA",
  cities: [
    alWakrahAlWakrahCity,
    alWakrahAlWukayrCity,
    alWakrahMusayidCity
  ]);

/// The `Al-Shahaniya` region in `Qatar`
const Region qatarAlHypshahaniya = Region(
  id: 3178,
  parentId: 179,
  longitude: 51.1846025,
  latitude: 25.4106386,
  name: "Al-Shahaniya",
  type: null,
  stateCode: "SH",
  cities: [
    alHypshahaniyaAlJumayliyahCity,
    alHypshahaniyaAshShihaniyahCity,
    alHypshahaniyaDukhanCity
  ]);

/// The `Doha` region in `Qatar`
const Region qatarDoha = Region(
  id: 3181,
  parentId: 179,
  longitude: 51.5310398,
  latitude: 25.2854473,
  name: "Doha",
  type: null,
  stateCode: "DA",
  cities: [
    dohaDohaCity
  ]);

/// The `Madinat ash Shamal` region in `Qatar`
const Region qatarMadinatAshShamal = Region(
  id: 3180,
  parentId: 179,
  longitude: 51.2157265,
  latitude: 26.1182743,
  name: "Madinat ash Shamal",
  type: null,
  stateCode: "MS",
  cities: [
    madinatAshShamalArRuwaysCity,
    madinatAshShamalFuwayritCity,
    madinatAshShamalMadinatAshShamalCity
  ]);

/// The `Umm Salal Municipality` region in `Qatar`
const Region qatarUmmSalalMunicipality = Region(
  id: 3184,
  parentId: 179,
  longitude: 51.396568,
  latitude: 25.4875242,
  name: "Umm Salal Municipality",
  type: null,
  stateCode: "US",
  cities: [
    ummSalalMunicipalityUmmSalalMuhammadCity
  ]);

/// The 8 states of `Qatar` keyed by their id.
const Map<int, Region> qatarStates = <int, Region>{
    3182: qatarAlDaayen,
    3183: qatarAlKhor,
    3177: qatarAlRayyanMunicipality,
    3179: qatarAlWakrah,
    3178: qatarAlHypshahaniya,
    3181: qatarDoha,
    3180: qatarMadinatAshShamal,
    3184: qatarUmmSalalMunicipality
  };
