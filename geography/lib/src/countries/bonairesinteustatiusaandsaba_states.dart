/// Access to known geographies in `Bonaire, Sint Eustatius and Saba` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'bonairesinteustatiusaandsaba_cities.dart';

/// The `Bonaire` region in `Bonaire, Sint Eustatius and Saba`
const Region bonaireSintEustatiusAndSabaBonaireSpecialMunicipality = Region(
  id: 5086,
  parentId: 155,
  longitude: -68.2623822,
  latitude: 12.2018902,
  name: "Bonaire",
  type: "special municipality",
  stateCode: "BQ1",
  cities: [
    bonaireSpecialMunicipalityBovenBoliviaCity,
    bonaireSpecialMunicipalityDorpTeraKoraCity,
    bonaireSpecialMunicipalityOranjestadCity,
    bonaireSpecialMunicipalityRinconCity,
    bonaireSpecialMunicipalityStJohnsCity,
    bonaireSpecialMunicipalityTheBottomCity,
    bonaireSpecialMunicipalityWindwardsideCity,
    bonaireSpecialMunicipalityZionsHillCity
  ]);

/// The `Saba` region in `Bonaire, Sint Eustatius and Saba`
const Region bonaireSintEustatiusAndSabaSabaSpecialMunicipality = Region(
  id: 5087,
  parentId: 155,
  longitude: -63.2326763,
  latitude: 17.6354642,
  name: "Saba",
  type: "special municipality",
  stateCode: "BQ2",
  cities: []);

/// The `Sint Eustatius` region in `Bonaire, Sint Eustatius and Saba`
const Region bonaireSintEustatiusAndSabaSintEustatiusSpecialMunicipality = Region(
  id: 5088,
  parentId: 155,
  longitude: -62.973555,
  latitude: 17.4890306,
  name: "Sint Eustatius",
  type: "special municipality",
  stateCode: "BQ3",
  cities: []);

/// The 3 states of `Bonaire, Sint Eustatius and Saba` keyed by their id.
const Map<int, Region> bonaireSintEustatiusAndSabaStates = <int, Region>{
    5086: bonaireSintEustatiusAndSabaBonaireSpecialMunicipality,
    5087: bonaireSintEustatiusAndSabaSabaSpecialMunicipality,
    5088: bonaireSintEustatiusAndSabaSintEustatiusSpecialMunicipality
  };
