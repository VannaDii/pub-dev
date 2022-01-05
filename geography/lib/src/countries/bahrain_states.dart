/// Access to known geographies in Bahrain and their meta data.
///
/// NOTICE: This file is auto-generated and should not be changed manually.

import '../base.dart';
import 'bahrain_cities.dart';

/// The 5 regions of `🇧🇭 Bahrain`
const Region bahrainCapitalGovernorate = Region(id: 1992, parentId: 18, longitude: 1.7976931348623157e+308, latitude: 1.7976931348623157e+308,
          name: "Capital Governorate", type: null, stateCode: "13",
          cities: [
            bahrainCapitalGovernorateJiddHafs,
            bahrainCapitalGovernorateManama,
            bahrainCapitalGovernorateSitrah
          ]);
const Region bahrainCentralGovernorate = Region(id: 1996, parentId: 18, longitude: 50.5653294, latitude: 26.1426093,
          name: "Central Governorate", type: null, stateCode: "16",
          cities: [
            bahrainCentralGovernorateMadinatHamad
          ]);
const Region bahrainMuharraqGovernorate = Region(id: 1995, parentId: 18, longitude: 50.6482517, latitude: 26.2685653,
          name: "Muharraq Governorate", type: null, stateCode: "15",
          cities: [
            bahrainMuharraqGovernorateAlHadd,
            bahrainMuharraqGovernorateAlMuharraq
          ]);
const Region bahrainNorthernGovernorate = Region(id: 1994, parentId: 18, longitude: 50.4825173, latitude: 26.1551914,
          name: "Northern Governorate", type: null, stateCode: "17",
          cities: []);
const Region bahrainSouthernGovernorate = Region(id: 1993, parentId: 18, longitude: 50.5756887, latitude: 25.9381018,
          name: "Southern Governorate", type: null, stateCode: "14",
          cities: [
            bahrainSouthernGovernorateArRifa,
            bahrainSouthernGovernorateDarKulayb,
            bahrainSouthernGovernorateMadinatIsa
          ]);

const bahrainStates = <int, Region>{
    1992: bahrainCapitalGovernorate,
    1996: bahrainCentralGovernorate,
    1995: bahrainMuharraqGovernorate,
    1994: bahrainNorthernGovernorate,
    1993: bahrainSouthernGovernorate
  };
