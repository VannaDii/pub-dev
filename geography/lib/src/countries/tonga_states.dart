/// Access to known geographies in Tonga and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'tonga_cities.dart';

/// The 5 regions of `🇹🇴 Tonga`
const Region tongaHaapai = Region(
    id: 3913,
    parentId: 222,
    longitude: -174.366667,
    latitude: -19.75,
    name: "Haʻapai",
    type: null,
    stateCode: "02",
    cities: [tongaHaapaiPangai]);
const Region tongaEua = Region(
    id: 3915,
    parentId: 222,
    longitude: -95.712891,
    latitude: 37.09024,
    name: "ʻEua",
    type: null,
    stateCode: "01",
    cities: [tongaEuaOhonua]);
const Region tongaNiuas = Region(
    id: 3914,
    parentId: 222,
    longitude: -173.783,
    latitude: -15.9594,
    name: "Niuas",
    type: null,
    stateCode: "03",
    cities: [tongaNiuasHihifo]);
const Region tongaTongatapu = Region(
    id: 3912,
    parentId: 222,
    longitude: -175.2515482,
    latitude: -21.1465968,
    name: "Tongatapu",
    type: null,
    stateCode: "04",
    cities: [
      tongaTongatapuHaveluloto,
      tongaTongatapuKolonga,
      tongaTongatapuNukualofa,
      tongaTongatapuVaini
    ]);
const Region tongaVavau = Region(
    id: 3911,
    parentId: 222,
    longitude: -173.9902982,
    latitude: -18.622756,
    name: "Vavaʻu",
    type: null,
    stateCode: "05",
    cities: [tongaVavauNeiafu]);

const tongaStates = <int, Region>{
  3913: tongaHaapai,
  3915: tongaEua,
  3914: tongaNiuas,
  3912: tongaTongatapu,
  3911: tongaVavau
};
