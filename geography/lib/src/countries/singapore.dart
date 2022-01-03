/// Access to known geographies in Singapore and their meta data.
library geography;

import '../base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/

/// The country of `🇸🇬 Singapore`, and its 5 states
const Country singapore = Country(id: 199, name: "Singapore", longitude: 103.8,
          latitude: 1.36666666, capital: "Singapur",
          currency: "SGD", currencySymbol: "\$",
          emoji: "🇸🇬", emojiU: "U+1F1F8 U+1F1EC",
          iso2: "SG", iso3: "SGP",
          native: "Singapore", numericCode: "702",
          phoneCode: "65", region: "Asia",
          subregion: "South-Eastern Asia", tld: ".sg",
          states: [
            Region(id: 4651, longitude: 103.8143879, latitude: 1.289514,
                    name: "Central Singapore Community Development Council", type: null, stateCode: "01",
                    cities: [
                      City(id: 104057, name: "Singapore", longitude: 103.85007, latitude: 1.28967)
                    ]),
            Region(id: 4649, longitude: -93.2468107, latitude: 45.0118113,
                    name: "North East Community Development Council", type: null, stateCode: "02",
                    cities: []),
            Region(id: 4653, longitude: -94.457336, latitude: 39.107093,
                    name: "North West Community Development Council", type: null, stateCode: "03",
                    cities: [
                      City(id: 104058, name: "Woodlands", longitude: 103.78877, latitude: 1.43801)
                    ]),
            Region(id: 4650, longitude: -76.5691237, latitude: 39.286307,
                    name: "South East Community Development Council", type: null, stateCode: "04",
                    cities: []),
            Region(id: 4652, longitude: -75.231058, latitude: 39.925691,
                    name: "South West Community Development Council", type: null, stateCode: "05",
                    cities: [])
          ],
          timezones: [
            Timezone(abbreviation: "SGT", gmtOffset: 28800, gmtOffsetName: "UTC+08:00",
                    tzName: "Singapore Time", zoneName: "Asia/Singapore")
          ],
          translations: {
            "kr": "싱가포르",
            "br": "Singapura",
            "pt": "Singapura",
            "nl": "Singapore",
            "hr": "Singapur",
            "fa": "سنگاپور",
            "de": "Singapur",
            "es": "Singapur",
            "fr": "Singapour",
            "ja": "シンガポール",
            "it": "Singapore",
            "cn": "新加坡"
          });
