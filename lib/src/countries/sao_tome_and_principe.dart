/// Access to known geographies in Sao Tome and Principe and their meta data.
library geography;

import '../base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/

const Country saoTomeandPrincipe = Country(id: 193, name: "Sao Tome and Principe", longitude: 7.0,
          latitude: 1.0, capital: "Sao Tome",
          currency: "STD", currencySymbol: "Db",
          emoji: "🇸🇹", emojiU: "U+1F1F8 U+1F1F9",
          iso2: "ST", iso3: "STP",
          native: "São Tomé e Príncipe", numericCode: "678",
          phoneCode: "239", region: "Africa",
          subregion: "Middle Africa", tld: ".st",
          states: [
            Region(id: 270, longitude: 7.4056928, latitude: 1.6139381,
                    name: "Príncipe Province", type: null, stateCode: "P",
                    cities: [
                      City(id: 104837, name: "Santo António", longitude: 7.41951, latitude: 1.63943)
                    ]),
            Region(id: 271, longitude: 6.733343, latitude: 0.3301924,
                    name: "São Tomé Province", type: null, stateCode: "S",
                    cities: [
                      City(id: 104835, name: "Cantagalo District", longitude: 6.7, latitude: 0.21667),
                      City(id: 104836, name: "Caué District", longitude: 6.63825, latitude: 0.13415),
                      City(id: 104838, name: "São Tomé", longitude: 6.72732, latitude: 0.33654),
                      City(id: 104839, name: "Trindade", longitude: 6.68139, latitude: 0.29667)
                    ])
          ],
          timezones: [
            Timezone(abbreviation: "GMT", gmtOffset: 0, gmtOffsetName: "UTC±00",
                    tzName: "Greenwich Mean Time", zoneName: "Africa/Sao_Tome")
          ],
          translations: {
            "kr": "상투메 프린시페",
            "br": "São Tomé e Príncipe",
            "pt": "São Tomé e Príncipe",
            "nl": "Sao Tomé en Principe",
            "hr": "Sveti Toma i Princip",
            "fa": "کواترو دو فرویرو",
            "de": "São Tomé und Príncipe",
            "es": "Santo Tomé y Príncipe",
            "fr": "Sao Tomé-et-Principe",
            "ja": "サントメ・プリンシペ",
            "it": "São Tomé e Príncipe",
            "cn": "圣多美和普林西比"
          });
