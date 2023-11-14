/// Access to known geographies in `Niger` and their metadata.
///
/// NOTICE: This file is auto-generated and should not be changed manually.
library;

import '../base.dart';
import 'niger_cities.dart';

/// The `Agadez Region` region in `Niger`
const Region nigerAgadezRegion = Region(
  id: 71,
  parentId: 160,
  longitude: 12.0718281,
  latitude: 20.6670752,
  name: "Agadez Region",
  type: null,
  stateCode: "1",
  cities: [
    agadezRegionAgadezCity,
    agadezRegionAlaghsasCity,
    agadezRegionArlitCity,
    agadezRegionBilmaCity,
    agadezRegionDepartementDeBilmaCity,
    agadezRegionDepartementDeTchirozerineCity
  ]);

/// The `Diffa Region` region in `Niger`
const Region nigerDiffaRegion = Region(
  id: 72,
  parentId: 160,
  longitude: 12.7135121,
  latitude: 13.6768647,
  name: "Diffa Region",
  type: null,
  stateCode: "2",
  cities: [
    diffaRegionDepartementDeDiffaCity,
    diffaRegionDepartementDeMaineHypsoroaCity,
    diffaRegionDepartementDeNguigmiCity,
    diffaRegionDiffaCity,
    diffaRegionMaineSoroaCity,
    diffaRegionNguigmiCity
  ]);

/// The `Dosso Region` region in `Niger`
const Region nigerDossoRegion = Region(
  id: 68,
  parentId: 160,
  longitude: 3.4195527,
  latitude: 13.1513947,
  name: "Dosso Region",
  type: null,
  stateCode: "3",
  cities: [
    dossoRegionBoboyeDepartmentCity,
    dossoRegionDepartementDeDogondoutchiCity,
    dossoRegionDepartementDeDossoCity,
    dossoRegionDepartementDeGayaCity,
    dossoRegionDepartementDeLogaCity,
    dossoRegionDogondoutchiCity,
    dossoRegionDossoCity,
    dossoRegionGayaCity
  ]);

/// The `Maradi Region` region in `Niger`
const Region nigerMaradiRegion = Region(
  id: 70,
  parentId: 160,
  longitude: 7.4381355,
  latitude: 13.8018074,
  name: "Maradi Region",
  type: null,
  stateCode: "4",
  cities: [
    maradiRegionAguieCity,
    maradiRegionDakoroCity,
    maradiRegionDepartementDaguieCity,
    maradiRegionDepartementDeDakoroCity,
    maradiRegionDepartementDeMayahiCity,
    maradiRegionDepartementDeTessaouaCity,
    maradiRegionGuidanRoumdjiDepartmentCity,
    maradiRegionMadarounfaCity,
    maradiRegionMaradiCity,
    maradiRegionMayahiCity,
    maradiRegionTessaouaCity,
    maradiRegionTibiriCity
  ]);

/// The `Tahoua Region` region in `Niger`
const Region nigerTahouaRegion = Region(
  id: 73,
  parentId: 160,
  longitude: 5.3939551,
  latitude: 16.0902543,
  name: "Tahoua Region",
  type: null,
  stateCode: "5",
  cities: [
    tahouaRegionAbalakCity,
    tahouaRegionBirniNKonniCity,
    tahouaRegionBouzaCity,
    tahouaRegionDepartementDIllelaCity,
    tahouaRegionDepartementDeBirniNkonniCity,
    tahouaRegionDepartementDeBouzaCity,
    tahouaRegionDepartementDeKeitaCity,
    tahouaRegionDepartementDeMadaouaCity,
    tahouaRegionDepartementDeTahouaCity,
    tahouaRegionDepartementDeTchinHyptabaradenCity,
    tahouaRegionIllelaCity,
    tahouaRegionKeitaCity,
    tahouaRegionMadaouaCity,
    tahouaRegionTahouaCity,
    tahouaRegionTchintabaradenCity
  ]);

/// The `Tillabéri Region` region in `Niger`
const Region nigerTillaberiRegion = Region(
  id: 67,
  parentId: 160,
  longitude: 2.1450245,
  latitude: 14.6489525,
  name: "Tillabéri Region",
  type: null,
  stateCode: "6",
  cities: [
    tillaberiRegionAyorouCity,
    tillaberiRegionBalleyaraCity,
    tillaberiRegionDepartementDeFilingueCity,
    tillaberiRegionDepartementDeOuallamCity,
    tillaberiRegionDepartementDeSayCity,
    tillaberiRegionFilingueCity,
    tillaberiRegionKolloCity,
    tillaberiRegionKolloDepartmentCity,
    tillaberiRegionOuallamCity,
    tillaberiRegionSayCity,
    tillaberiRegionTeraCity,
    tillaberiRegionTeraDepartmentCity,
    tillaberiRegionTillaberiCity,
    tillaberiRegionTillaberiDepartmentCity
  ]);

/// The `Zinder Region` region in `Niger`
const Region nigerZinderRegion = Region(
  id: 69,
  parentId: 160,
  longitude: 10.2600125,
  latitude: 15.1718881,
  name: "Zinder Region",
  type: null,
  stateCode: "7",
  cities: [
    zinderRegionDepartementDeGoureCity,
    zinderRegionDepartementDeKantcheCity,
    zinderRegionDepartementDeTanoutCity,
    zinderRegionGoureCity,
    zinderRegionMagariaCity,
    zinderRegionMatameyCity,
    zinderRegionMirriahCity,
    zinderRegionTanoutCity,
    zinderRegionZinderCity
  ]);

/// The 7 states of `Niger` keyed by their id.
const Map<int, Region> nigerStates = <int, Region>{
    71: nigerAgadezRegion,
    72: nigerDiffaRegion,
    68: nigerDossoRegion,
    70: nigerMaradiRegion,
    73: nigerTahouaRegion,
    67: nigerTillaberiRegion,
    69: nigerZinderRegion
  };
