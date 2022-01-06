/// Access to known geographies in Qatar and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'qatar_cities.dart';

/// The 8 regions of `🇶🇦 Qatar`
const Region qatarAlDaayen = Region(
    id: 3182,
    parentId: 179,
    longitude: 51.4821387,
    latitude: 25.5784559,
    name: "Al Daayen",
    type: null,
    stateCode: "ZA",
    cities: []);
const Region qatarAlKhor = Region(
    id: 3183,
    parentId: 179,
    longitude: 51.4968502,
    latitude: 25.6804078,
    name: "Al Khor",
    type: null,
    stateCode: "KH",
    cities: [qatarAlKhorAlGhuwayriyah, qatarAlKhorAlKhawr]);
const Region qatarAlRayyanMunicipality = Region(
    id: 3177,
    parentId: 179,
    longitude: 51.4388713,
    latitude: 25.2522551,
    name: "Al Rayyan Municipality",
    type: null,
    stateCode: "RA",
    cities: [
      qatarAlRayyanMunicipalityArRayyan,
      qatarAlRayyanMunicipalityUmmBab
    ]);
const Region qatarAlWakrah = Region(
    id: 3179,
    parentId: 179,
    longitude: 51.5975524,
    latitude: 25.1659314,
    name: "Al Wakrah",
    type: null,
    stateCode: "WA",
    cities: [
      qatarAlWakrahAlWakrah,
      qatarAlWakrahAlWukayr,
      qatarAlWakrahMusayid
    ]);
const Region qatarAlHypShahaniya = Region(
    id: 3178,
    parentId: 179,
    longitude: 51.1846025,
    latitude: 25.4106386,
    name: "Al-Shahaniya",
    type: null,
    stateCode: "SH",
    cities: [
      qatarAlHypShahaniyaAlJumayliyah,
      qatarAlHypShahaniyaAshShihaniyah,
      qatarAlHypShahaniyaDukhan
    ]);
const Region qatarDoha = Region(
    id: 3181,
    parentId: 179,
    longitude: 51.5310398,
    latitude: 25.2854473,
    name: "Doha",
    type: null,
    stateCode: "DA",
    cities: [qatarDohaDoha]);
const Region qatarMadinatAashShamal = Region(
    id: 3180,
    parentId: 179,
    longitude: 51.2157265,
    latitude: 26.1182743,
    name: "Madinat ash Shamal",
    type: null,
    stateCode: "MS",
    cities: [
      qatarMadinatAashShamalArRuways,
      qatarMadinatAashShamalFuwayrit,
      qatarMadinatAashShamalMadinatAashShamal
    ]);
const Region qatarUmmSalalMunicipality = Region(
    id: 3184,
    parentId: 179,
    longitude: 51.396568,
    latitude: 25.4875242,
    name: "Umm Salal Municipality",
    type: null,
    stateCode: "US",
    cities: [qatarUmmSalalMunicipalityUmmSalalMuhammad]);

const qatarStates = <int, Region>{
  3182: qatarAlDaayen,
  3183: qatarAlKhor,
  3177: qatarAlRayyanMunicipality,
  3179: qatarAlWakrah,
  3178: qatarAlHypShahaniya,
  3181: qatarDoha,
  3180: qatarMadinatAashShamal,
  3184: qatarUmmSalalMunicipality
};
