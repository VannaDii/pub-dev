/// Access to known geographies in `Andorra` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'andorra_cities.dart';

/// The `Andorra la Vella` region in `Andorra`
const Region andorraAndorraLaVella = Region(
  id: 488,
  parentId: 6,
  longitude: 1.5218355,
  latitude: 42.5063174,
  name: "Andorra la Vella",
  type: null,
  stateCode: "07",
  cities: [
    andorraLaVellaAndorraLaVellaCity
  ]);

/// The `Canillo` region in `Andorra`
const Region andorraCanillo = Region(
  id: 489,
  parentId: 6,
  longitude: 1.6566377,
  latitude: 42.5978249,
  name: "Canillo",
  type: null,
  stateCode: "02",
  cities: [
    canilloCanilloCity,
    canilloElTarterCity
  ]);

/// The `Encamp` region in `Andorra`
const Region andorraEncamp = Region(
  id: 487,
  parentId: 6,
  longitude: 1.5836773,
  latitude: 42.5359764,
  name: "Encamp",
  type: null,
  stateCode: "03",
  cities: [
    encampEncampCity,
    encampPasDeLaCasaCity
  ]);

/// The `Escaldes-Engordany` region in `Andorra`
const Region andorraEscaldesHypengordany = Region(
  id: 492,
  parentId: 6,
  longitude: 1.5886966,
  latitude: 42.4909379,
  name: "Escaldes-Engordany",
  type: null,
  stateCode: "08",
  cities: [
    escaldesHypengordanyLesEscaldesCity
  ]);

/// The `La Massana` region in `Andorra`
const Region andorraLaMassana = Region(
  id: 493,
  parentId: 6,
  longitude: 1.5147392,
  latitude: 42.545625,
  name: "La Massana",
  type: null,
  stateCode: "04",
  cities: [
    laMassanaArinsalCity,
    laMassanaLaMassanaCity
  ]);

/// The `Ordino` region in `Andorra`
const Region andorraOrdino = Region(
  id: 491,
  parentId: 6,
  longitude: 1.5402327,
  latitude: 42.5994433,
  name: "Ordino",
  type: null,
  stateCode: "05",
  cities: [
    ordinoOrdinoCity
  ]);

/// The `Sant Julià de Lòria` region in `Andorra`
const Region andorraSantJuliaDeLoria = Region(
  id: 490,
  parentId: 6,
  longitude: 1.4918235,
  latitude: 42.4529631,
  name: "Sant Julià de Lòria",
  type: null,
  stateCode: "06",
  cities: [
    santJuliaDeLoriaSantJuliaDeLoriaCity
  ]);

/// The 7 states of `Andorra` keyed by their id.
const Map<int, Region> andorraStates = <int, Region>{
    488: andorraAndorraLaVella,
    489: andorraCanillo,
    487: andorraEncamp,
    492: andorraEscaldesHypengordany,
    493: andorraLaMassana,
    491: andorraOrdino,
    490: andorraSantJuliaDeLoria
  };
