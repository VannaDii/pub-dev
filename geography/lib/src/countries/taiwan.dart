/// Access to known geographies in Taiwan and their meta data.
library geography;

import '../base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/

/// The country of `🇹🇼 Taiwan`, and its 22 states
const Country taiwan = Country(id: 216, name: "Taiwan", longitude: 121.0,
          latitude: 23.5, capital: "Taipei",
          currency: "TWD", currencySymbol: "\$",
          emoji: "🇹🇼", emojiU: "U+1F1F9 U+1F1FC",
          iso2: "TW", iso3: "TWN",
          native: "臺灣", numericCode: "158",
          phoneCode: "886", region: "Asia",
          subregion: "Eastern Asia", tld: ".tw",
          states: [
            Region(id: 3404, longitude: 120.5161352, latitude: 24.0517963,
                    name: "Changhua", type: "county", stateCode: "CHA",
                    cities: [
                      City(id: 109003, name: "Changhua", longitude: 120.49083, latitude: 23.95361),
                      City(id: 109038, name: "Yuanlin", longitude: 120.57608, latitude: 23.95671)
                    ]),
            Region(id: 3408, longitude: 120.2554615, latitude: 23.4518428,
                    name: "Chiayi", type: "city", stateCode: "CYI",
                    cities: [
                      City(id: 109004, name: "Chiayi", longitude: 120.44527, latitude: 23.47722),
                      City(id: 109026, name: "Pizitou", longitude: 120.44472, latitude: 23.48556)
                    ]),
            Region(id: 3418, longitude: 120.4491113, latitude: 23.4800751,
                    name: "Chiayi", type: "county", stateCode: "CYQ",
                    cities: [
                      City(id: 109005, name: "Chiayi County", longitude: 120.58166, latitude: 23.46333)
                    ]),
            Region(id: 3423, longitude: 121.0177246, latitude: 24.8387226,
                    name: "Hsinchu", type: "county", stateCode: "HSQ",
                    cities: [
                      City(id: 109010, name: "Hsinchu", longitude: 120.96861, latitude: 24.80361)
                    ]),
            Region(id: 3417, longitude: 120.9674798, latitude: 24.8138287,
                    name: "Hsinchu", type: "city", stateCode: "HSZ",
                    cities: [
                      City(id: 109011, name: "Hsinchu County", longitude: 121.16111, latitude: 24.67416)
                    ]),
            Region(id: 3411, longitude: 121.6015714, latitude: 23.9871589,
                    name: "Hualien", type: "county", stateCode: "HUA",
                    cities: [
                      City(id: 109012, name: "Hualien", longitude: 121.39333, latitude: 23.78166),
                      City(id: 109013, name: "Hualien City", longitude: 121.60444, latitude: 23.97694)
                    ]),
            Region(id: 3412, longitude: 120.3014353, latitude: 22.6272784,
                    name: "Kaohsiung", type: "special municipality", stateCode: "KHH",
                    cities: [
                      City(id: 109016, name: "Kaohsiung", longitude: 120.31333, latitude: 22.61626)
                    ]),
            Region(id: 4965, longitude: 121.6475834, latitude: 25.1241862,
                    name: "Keelung", type: "city", stateCode: "KEE",
                    cities: []),
            Region(id: 3415, longitude: 118.3285644, latitude: 24.3487792,
                    name: "Kinmen", type: "county", stateCode: "KIN",
                    cities: [
                      City(id: 109014, name: "Jincheng", longitude: 118.31712, latitude: 24.43415),
                      City(id: 109017, name: "Kinmen County", longitude: 118.38861, latitude: 24.45333)
                    ]),
            Region(id: 3420, longitude: 119.9288889, latitude: 26.1505556,
                    name: "Lienchiang", type: "county", stateCode: "LIE",
                    cities: [
                      City(id: 109018, name: "Lienchiang", longitude: 120.49545, latitude: 26.37004),
                      City(id: 109022, name: "Nangan", longitude: 119.93284, latitude: 26.15039)
                    ]),
            Region(id: 3413, longitude: 120.8214265, latitude: 24.560159,
                    name: "Miaoli", type: "county", stateCode: "MIA",
                    cities: [
                      City(id: 109021, name: "Miaoli", longitude: 120.90638, latitude: 24.48972)
                    ]),
            Region(id: 3407, longitude: 120.9718638, latitude: 23.9609981,
                    name: "Nantou", type: "county", stateCode: "NAN",
                    cities: [
                      City(id: 109019, name: "Lugu", longitude: 120.7525, latitude: 23.74639),
                      City(id: 109023, name: "Nantou", longitude: 120.92704, latitude: 23.83419),
                      City(id: 109027, name: "Puli", longitude: 120.96952, latitude: 23.96639),
                      City(id: 109041, name: "Zhongxing New Village", longitude: 120.68516, latitude: 23.95908)
                    ]),
            Region(id: 4966, longitude: 121.3645947, latitude: 24.9875278,
                    name: "New Taipei", type: "special municipality", stateCode: "NWT",
                    cities: []),
            Region(id: 3403, longitude: 119.5793157, latitude: 23.5711899,
                    name: "Penghu", type: "county", stateCode: "PEN",
                    cities: [
                      City(id: 109020, name: "Magong", longitude: 119.58627, latitude: 23.5654),
                      City(id: 109024, name: "Penghu County", longitude: 119.61138, latitude: 23.57111)
                    ]),
            Region(id: 3405, longitude: 120.5487597, latitude: 22.5519759,
                    name: "Pingtung", type: "county", stateCode: "PIF",
                    cities: [
                      City(id: 109007, name: "Donggang", longitude: 120.44927, latitude: 22.46515),
                      City(id: 109009, name: "Hengchun", longitude: 120.74389, latitude: 22.00417),
                      City(id: 109025, name: "Pingtung", longitude: 120.61444, latitude: 22.49555)
                    ]),
            Region(id: 3406, longitude: 120.6736482, latitude: 24.1477358,
                    name: "Taichung", type: "special municipality", stateCode: "TXG",
                    cities: [
                      City(id: 109028, name: "Taichung", longitude: 120.6839, latitude: 24.1469),
                      City(id: 109029, name: "Taichung City", longitude: 120.67297, latitude: 24.15472)
                    ]),
            Region(id: 3421, longitude: 120.2270277, latitude: 22.9997281,
                    name: "Tainan", type: "special municipality", stateCode: "TNN",
                    cities: [
                      City(id: 109030, name: "Tainan", longitude: 120.21333, latitude: 22.99083),
                      City(id: 109039, name: "Yujing", longitude: 120.46138, latitude: 23.12493)
                    ]),
            Region(id: 3422, longitude: 121.5654177, latitude: 25.0329694,
                    name: "Taipei", type: "special municipality", stateCode: "TPE",
                    cities: [
                      City(id: 109002, name: "Banqiao", longitude: 121.46719, latitude: 25.01427),
                      City(id: 109015, name: "Jiufen", longitude: 121.84424, latitude: 25.10957),
                      City(id: 109031, name: "Taipei", longitude: 121.53185, latitude: 25.04776),
                      City(id: 109032, name: "Taipei City", longitude: 121.55331, latitude: 25.083)
                    ]),
            Region(id: 3410, longitude: 121.0713702, latitude: 22.7972447,
                    name: "Taitung", type: "county", stateCode: "TTT",
                    cities: [
                      City(id: 109033, name: "Taitung", longitude: 121.04833, latitude: 22.88361),
                      City(id: 109034, name: "Taitung City", longitude: 121.1444, latitude: 22.7583)
                    ]),
            Region(id: 3419, longitude: 121.3009798, latitude: 24.9936281,
                    name: "Taoyuan", type: "special municipality", stateCode: "TAO",
                    cities: [
                      City(id: 109006, name: "Daxi", longitude: 121.29043, latitude: 24.88373),
                      City(id: 109035, name: "Taoyuan", longitude: 121.24611, latitude: 24.895),
                      City(id: 109036, name: "Taoyuan City", longitude: 121.29696, latitude: 24.99368)
                    ]),
            Region(id: 3402, longitude: 121.7377502, latitude: 24.7021073,
                    name: "Yilan", type: "county", stateCode: "ILA",
                    cities: [
                      City(id: 109037, name: "Yilan", longitude: 121.63361, latitude: 24.5425)
                    ]),
            Region(id: 3416, longitude: 120.4313373, latitude: 23.7092033,
                    name: "Yunlin", type: "county", stateCode: "YUN",
                    cities: [
                      City(id: 109008, name: "Douliu", longitude: 120.54333, latitude: 23.70944),
                      City(id: 109040, name: "Yunlin", longitude: 120.38481, latitude: 23.70701)
                    ])
          ],
          timezones: [
            Timezone(abbreviation: "CST", gmtOffset: 28800, gmtOffsetName: "UTC+08:00",
                    tzName: "China Standard Time", zoneName: "Asia/Taipei")
          ],
          translations: {
            "kr": "대만",
            "br": "Taiwan",
            "pt": "Taiwan",
            "nl": "Taiwan",
            "hr": "Tajvan",
            "fa": "تایوان",
            "de": "Taiwan",
            "es": "Taiwán",
            "fr": "Taïwan",
            "ja": "台湾（中華民国）",
            "it": "Taiwan",
            "cn": "中国台湾"
          });
