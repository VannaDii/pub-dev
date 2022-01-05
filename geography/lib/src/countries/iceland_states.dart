/// Access to known geographies in Iceland and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'iceland_cities.dart';

/// The 8 regions of `🇮🇸 Iceland`
const Region icelandCapitalRegion = Region(id: 3431, parentId: 100, longitude: -92.1816949, latitude: 38.5656957,
          name: "Capital Region", type: null, stateCode: "1",
          cities: [
            icelandCapitalRegionAlftanes,
            icelandCapitalRegionGarabaer,
            icelandCapitalRegionHafnarfjorur,
            icelandCapitalRegionKjosarhreppur,
            icelandCapitalRegionKopavogur,
            icelandCapitalRegionMosfellsbaer,
            icelandCapitalRegionMosfellsbaer,
            icelandCapitalRegionReykjavik,
            icelandCapitalRegionSeltjarnarnes
          ]);
const Region icelandEasternRegion = Region(id: 3433, parentId: 100, longitude: 1.7976931348623157e+308, latitude: 1.7976931348623157e+308,
          name: "Eastern Region", type: null, stateCode: "7",
          cities: [
            icelandEasternRegionBorgarfjararhreppur,
            icelandEasternRegionBreidalshreppur,
            icelandEasternRegionEgilsstair,
            icelandEasternRegionEskifjorur,
            icelandEasternRegionFjarabygg,
            icelandEasternRegionFljotsdalshera,
            icelandEasternRegionFljotsdalshreppur,
            icelandEasternRegionHofn,
            icelandEasternRegionNeskaupstaur,
            icelandEasternRegionReyarfjorur
          ]);
const Region icelandNortheasternRegion = Region(id: 3437, parentId: 100, longitude: -74.2179326, latitude: 43.2994285,
          name: "Northeastern Region", type: null, stateCode: "6",
          cities: [
            icelandNortheasternRegionAkureyri,
            icelandNortheasternRegionDalvik,
            icelandNortheasternRegionDalvikurbygg,
            icelandNortheasternRegionEyjafjararsveit,
            icelandNortheasternRegionFjallabygg,
            icelandNortheasternRegionGrytubakkahreppur,
            icelandNortheasternRegionHorgarsveit,
            icelandNortheasternRegionHusavik,
            icelandNortheasternRegionLanganesbygg,
            icelandNortheasternRegionLaugar,
            icelandNortheasternRegionSiglufjorur,
            icelandNortheasternRegionSkutustaahreppur,
            icelandNortheasternRegionSvalbarsstrandarhreppur,
            icelandNortheasternRegionTjorneshreppur,
            icelandNortheasternRegionThingeyjarsveit
          ]);
const Region icelandNorthwesternRegion = Region(id: 3435, parentId: 100, longitude: -73.0471688, latitude: 41.9133932,
          name: "Northwestern Region", type: null, stateCode: "5",
          cities: [
            icelandNorthwesternRegionAkrahreppur,
            icelandNorthwesternRegionHunathingVestra,
            icelandNorthwesternRegionSauarkrokur,
            icelandNorthwesternRegionSkagabygg,
            icelandNorthwesternRegionSveitarfelagiSkagafjorur
          ]);
const Region icelandSouthernPeninsulaRegion = Region(id: 3430, parentId: 100, longitude: -22.3649667, latitude: 63.9154803,
          name: "Southern Peninsula Region", type: null, stateCode: "2",
          cities: [
            icelandSouthernPeninsulaRegionGarur,
            icelandSouthernPeninsulaRegionGrindavik,
            icelandSouthernPeninsulaRegionKeflavik,
            icelandSouthernPeninsulaRegionReykjanesbaer,
            icelandSouthernPeninsulaRegionSandgeri,
            icelandSouthernPeninsulaRegionVogar
          ]);
const Region icelandSouthernRegion = Region(id: 3434, parentId: 100, longitude: 1.7976931348623157e+308, latitude: 1.7976931348623157e+308,
          name: "Southern Region", type: null, stateCode: "8",
          cities: [
            icelandSouthernRegionAsahreppur,
            icelandSouthernRegionBlaskogabygg,
            icelandSouthernRegionFloahreppur,
            icelandSouthernRegionGrimsnesHypOogGrafningshreppur,
            icelandSouthernRegionHrunamannahreppur,
            icelandSouthernRegionHverageri,
            icelandSouthernRegionMyrdalshreppur,
            icelandSouthernRegionSelfoss,
            icelandSouthernRegionSkaftarhreppur,
            icelandSouthernRegionSkeiaHypOogGnupverjahreppur,
            icelandSouthernRegionVestmannaeyjabaer,
            icelandSouthernRegionVestmannaeyjar,
            icelandSouthernRegionThorlakshofn
          ]);
const Region icelandWesternRegion = Region(id: 3436, parentId: 100, longitude: 1.7976931348623157e+308, latitude: 1.7976931348623157e+308,
          name: "Western Region", type: null, stateCode: "3",
          cities: [
            icelandWesternRegionAkranes,
            icelandWesternRegionBorgarbygg,
            icelandWesternRegionBorgarnes,
            icelandWesternRegionDalabygg,
            icelandWesternRegionEyjaHypOogMiklaholtshreppur,
            icelandWesternRegionHelgafellssveit,
            icelandWesternRegionHvalfjararsveit,
            icelandWesternRegionOlafsvik,
            icelandWesternRegionSkorradalshreppur,
            icelandWesternRegionSnaefellsbaer,
            icelandWesternRegionStykkisholmur
          ]);
const Region icelandWestfjords = Region(id: 3432, parentId: 100, longitude: -21.8811764, latitude: 65.919615,
          name: "Westfjords", type: null, stateCode: "4",
          cities: [
            icelandWestfjordsIsafjararbaer,
            icelandWestfjordsIsafjorur,
            icelandWestfjordsReykholahreppur,
            icelandWestfjordsStrandabygg,
            icelandWestfjordsTalknafjararhreppur
          ]);

const icelandStates = <int, Region>{
    3431: icelandCapitalRegion,
    3433: icelandEasternRegion,
    3437: icelandNortheasternRegion,
    3435: icelandNorthwesternRegion,
    3430: icelandSouthernPeninsulaRegion,
    3434: icelandSouthernRegion,
    3436: icelandWesternRegion,
    3432: icelandWestfjords
  };
