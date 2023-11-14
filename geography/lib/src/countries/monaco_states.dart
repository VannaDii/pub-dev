/// Access to known geographies in `Monaco` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';

/// The `La Colle` region in `Monaco`
const Region monacoLaColle = Region(
  id: 4917,
  parentId: 145,
  longitude: 7.4137276,
  latitude: 43.7327465,
  name: "La Colle",
  type: null,
  stateCode: "CL",
  cities: []);

/// The `La Condamine` region in `Monaco`
const Region monacoLaCondamine = Region(
  id: 4918,
  parentId: 145,
  longitude: 7.419906,
  latitude: 43.7350665,
  name: "La Condamine",
  type: null,
  stateCode: "CO",
  cities: []);

/// The `Moneghetti` region in `Monaco`
const Region monacoMoneghetti = Region(
  id: 4919,
  parentId: 145,
  longitude: 7.4153383,
  latitude: 43.7364927,
  name: "Moneghetti",
  type: null,
  stateCode: "MG",
  cities: []);

/// The 3 states of `Monaco` keyed by their id.
const Map<int, Region> monacoStates = <int, Region>{
    4917: monacoLaColle,
    4918: monacoLaCondamine,
    4919: monacoMoneghetti
  };
