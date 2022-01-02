/// Access to known geographies in Mali and their meta data.
library geography;

import '../base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/

const Country mali = Country(id: 134, name: "Mali", longitude: -4.0,
          latitude: 17.0, capital: "Bamako",
          currency: "XOF", currencySymbol: "CFA",
          emoji: "🇲🇱", emojiU: "U+1F1F2 U+1F1F1",
          iso2: "ML", iso3: "MLI",
          native: "Mali", numericCode: "466",
          phoneCode: "223", region: "Africa",
          subregion: "Western Africa", tld: ".ml",
          states: [
            Region(id: 253, longitude: -8.0028892, latitude: 12.6392316,
                    name: "Bamako", type: null, stateCode: "BKO",
                    cities: [
                      City(id: 67587, name: "Bamako", longitude: -8.0, latitude: 12.65)
                    ]),
            Region(id: 258, longitude: 1.5208624, latitude: 16.9066332,
                    name: "Gao Region", type: null, stateCode: "7",
                    cities: [
                      City(id: 67584, name: "Ansongo", longitude: 0.5022, latitude: 15.6597),
                      City(id: 67592, name: "Cercle de Bourem", longitude: -0.34284, latitude: 17.71192),
                      City(id: 67601, name: "Gao", longitude: -0.04472, latitude: 16.27167),
                      City(id: 67602, name: "Gao Cercle", longitude: 0.43984, latitude: 16.72237),
                      City(id: 67605, name: "Inékar", longitude: 3.14111, latitude: 15.95944)
                    ]),
            Region(id: 252, longitude: -9.9018131, latitude: 14.0818308,
                    name: "Kayes Region", type: null, stateCode: "1",
                    cities: [
                      City(id: 67586, name: "Bafoulabé", longitude: -10.8321, latitude: 13.8065),
                      City(id: 67608, name: "Kayes", longitude: -11.44448, latitude: 14.44693),
                      City(id: 67611, name: "Kita", longitude: -9.4895, latitude: 13.0349),
                      City(id: 67612, name: "Kokofata", longitude: -9.95, latitude: 12.88333),
                      City(id: 67623, name: "Sagalo", longitude: -10.7, latitude: 12.2)
                    ]),
            Region(id: 257, longitude: 1.8318334, latitude: 18.7986832,
                    name: "Kidal Region", type: null, stateCode: "8",
                    cities: [
                      City(id: 67583, name: "Abeïbara", longitude: 1.75, latitude: 19.11667),
                      City(id: 67595, name: "Cercle d’Abeïbara", longitude: 2.20025, latitude: 19.48878),
                      City(id: 67609, name: "Kidal", longitude: 1.40778, latitude: 18.44111)
                    ]),
            Region(id: 250, longitude: -7.4381355, latitude: 13.8018074,
                    name: "Koulikoro Region", type: null, stateCode: "2",
                    cities: [
                      City(id: 67588, name: "Banamba", longitude: -7.44808, latitude: 13.54773),
                      City(id: 67606, name: "Kangaba", longitude: -8.41667, latitude: 11.93333),
                      City(id: 67607, name: "Kati", longitude: -8.07257, latitude: 12.74409),
                      City(id: 67613, name: "Kolokani", longitude: -8.0339, latitude: 13.5728),
                      City(id: 67615, name: "Koulikoro", longitude: -7.55985, latitude: 12.86273)
                    ]),
            Region(id: 251, longitude: 2.396174, latitude: 15.9156421,
                    name: "Ménaka Region", type: null, stateCode: "9",
                    cities: []),
            Region(id: 255, longitude: -3.4195527, latitude: 14.6338039,
                    name: "Mopti Region", type: null, stateCode: "5",
                    cities: [
                      City(id: 67589, name: "Bandiagara", longitude: -3.61038, latitude: 14.35005),
                      City(id: 67598, name: "Djénné", longitude: -4.55332, latitude: 13.90608),
                      City(id: 67599, name: "Douentza", longitude: -2.94978, latitude: 15.00155),
                      City(id: 67600, name: "Douentza Cercle", longitude: -2.40875, latitude: 15.06947),
                      City(id: 67620, name: "Mopti", longitude: -4.18296, latitude: 14.4843),
                      City(id: 67629, name: "Ténenkou", longitude: -4.9169, latitude: 14.45722)
                    ]),
            Region(id: 249, longitude: -6.0679194, latitude: 13.8394456,
                    name: "Ségou Region", type: null, stateCode: "4",
                    cities: [
                      City(id: 67590, name: "Baroueli", longitude: -6.57171, latitude: 13.07489),
                      City(id: 67594, name: "Cercle de San", longitude: -5.01617, latitude: 13.17895),
                      City(id: 67618, name: "Ké-Macina", longitude: -5.35791, latitude: 13.9641),
                      City(id: 67610, name: "Kinmparana", longitude: -4.9245, latitude: 12.84217),
                      City(id: 67619, name: "Markala", longitude: -6.0659, latitude: 13.7021),
                      City(id: 67624, name: "San", longitude: -4.89562, latitude: 13.30335),
                      City(id: 67627, name: "Ségou", longitude: -6.2157, latitude: 13.4317),
                      City(id: 67626, name: "Sokolo", longitude: -6.1219, latitude: 14.7328)
                    ]),
            Region(id: 254, longitude: -7.4381355, latitude: 10.8905186,
                    name: "Sikasso Region", type: null, stateCode: "3",
                    cities: [
                      City(id: 67591, name: "Bougouni", longitude: -7.48323, latitude: 11.41769),
                      City(id: 67614, name: "Kolondiéba", longitude: -6.8929, latitude: 11.08943),
                      City(id: 67616, name: "Koutiala", longitude: -5.46421, latitude: 12.39173),
                      City(id: 67617, name: "Koutiala Cercle", longitude: -5.5839, latitude: 12.35311),
                      City(id: 67622, name: "Ntossoni", longitude: -5.77003, latitude: 12.5304),
                      City(id: 67625, name: "Sikasso", longitude: -5.66654, latitude: 11.31755),
                      City(id: 67630, name: "Yorosso", longitude: -4.77688, latitude: 12.35811)
                    ]),
            Region(id: 256, longitude: -3.9789143, latitude: 22.6764132,
                    name: "Taoudénit Region", type: null, stateCode: "10",
                    cities: []),
            Region(id: 248, longitude: -3.743509, latitude: 21.0526706,
                    name: "Tombouctou Region", type: null, stateCode: "6",
                    cities: [
                      City(id: 67585, name: "Araouane", longitude: -3.52649, latitude: 18.90476),
                      City(id: 67593, name: "Cercle de Goundam", longitude: -4.99306, latitude: 18.60035),
                      City(id: 67596, name: "Dire", longitude: -3.31302, latitude: 16.28017),
                      City(id: 67603, name: "Goundam", longitude: -3.67075, latitude: 16.41453),
                      City(id: 67604, name: "Gourma-Rharous Cercle", longitude: -1.76981, latitude: 16.07979),
                      City(id: 67621, name: "Niafunké", longitude: -3.9906, latitude: 15.9322),
                      City(id: 67628, name: "Timbuktu", longitude: -3.00742, latitude: 16.77348)
                    ])
          ],
          timezones: [
            Timezone(abbreviation: "GMT", gmtOffset: 0, gmtOffsetName: "UTC±00",
                    tzName: "Greenwich Mean Time", zoneName: "Africa/Bamako")
          ],
          translations: {
            "kr": "말리",
            "br": "Mali",
            "pt": "Mali",
            "nl": "Mali",
            "hr": "Mali",
            "fa": "مالی",
            "de": "Mali",
            "es": "Mali",
            "fr": "Mali",
            "ja": "マリ",
            "it": "Mali",
            "cn": "马里"
          });
