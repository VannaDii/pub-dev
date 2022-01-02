/// Access to known countries and their meta data.
library geography;

import '../base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/

import 'aland_islands.dart' show alandIslands;
import 'albania.dart' show albania;
import 'afghanistan.dart' show afghanistan;
import 'algeria.dart' show algeria;
import 'american_samoa.dart' show americanSamoa;
import 'andorra.dart' show andorra;
import 'angola.dart' show angola;
import 'anguilla.dart' show anguilla;
import 'antigua_and_barbuda.dart' show antiguaAndBarbuda;
import 'antarctica.dart' show antarctica;
import 'argentina.dart' show argentina;
import 'aruba.dart' show aruba;
import 'australia.dart' show australia;
import 'armenia.dart' show armenia;
import 'austria.dart' show austria;
import 'bahamas_the.dart' show bahamasThe;
import 'azerbaijan.dart' show azerbaijan;
import 'bahrain.dart' show bahrain;
import 'bangladesh.dart' show bangladesh;
import 'barbados.dart' show barbados;
import 'belarus.dart' show belarus;
import 'belize.dart' show belize;
import 'belgium.dart' show belgium;
import 'bermuda.dart' show bermuda;
import 'benin.dart' show benin;
import 'bhutan.dart' show bhutan;
import 'bolivia.dart' show bolivia;
import 'bonaire_sint_eustatius_and_saba.dart' show bonaireSintEustatiusandSaba;
import 'bosnia_and_herzegovina.dart' show bosniaandHerzegovina;
import 'botswana.dart' show botswana;
import 'bouvet_island.dart' show bouvetIsland;
import 'brunei.dart' show brunei;
import 'british_indian_ocean_territory.dart' show britishIndianOceanTerritory;
import 'bulgaria.dart' show bulgaria;
import 'brazil.dart' show brazil;
import 'burkina_faso.dart' show burkinaFaso;
import 'burundi.dart' show burundi;
import 'cambodia.dart' show cambodia;
import 'cameroon.dart' show cameroon;
import 'canada.dart' show canada;
import 'cayman_islands.dart' show caymanIslands;
import 'central_african_republic.dart' show centralAfricanRepublic;
import 'cape_verde.dart' show capeVerde;
import 'chile.dart' show chile;
import 'chad.dart' show chad;
import 'china.dart' show china;
import 'christmas_island.dart' show christmasIsland;
import 'cocos_keeling_islands.dart' show cocosKeelingIslands;
import 'colombia.dart' show colombia;
import 'comoros.dart' show comoros;
import 'congo.dart' show congo;
import 'cook_islands.dart' show cookIslands;
import 'cote_d_ivoire_ivory_coast_.dart' show coteDIvoireIvoryCoast;
import 'croatia.dart' show croatia;
import 'cuba.dart' show cuba;
import 'costa_rica.dart' show costaRica;
import 'cyprus.dart' show cyprus;
import 'cura_ao.dart' show curaao;
import 'czech_republic.dart' show czechRepublic;
import 'djibouti.dart' show djibouti;
import 'democratic_republic_of_the_congo.dart' show democraticRepublicoftheCongo;
import 'denmark.dart' show denmark;
import 'dominica.dart' show dominica;
import 'dominican_republic.dart' show dominicanRepublic;
import 'east_timor.dart' show eastTimor;
import 'ecuador.dart' show ecuador;
import 'egypt.dart' show egypt;
import 'eritrea.dart' show eritrea;
import 'el_salvador.dart' show elSalvador;
import 'ethiopia.dart' show ethiopia;
import 'estonia.dart' show estonia;
import 'equatorial_guinea.dart' show equatorialGuinea;
import 'falkland_islands.dart' show falklandIslands;
import 'faroe_islands.dart' show faroeIslands;
import 'fiji_islands.dart' show fijiIslands;
import 'finland.dart' show finland;
import 'french_polynesia.dart' show frenchPolynesia;
import 'french_guiana.dart' show frenchGuiana;
import 'french_southern_territories.dart' show frenchSouthernTerritories;
import 'gabon.dart' show gabon;
import 'georgia.dart' show georgia;
import 'gambia_the.dart' show gambiaThe;
import 'gibraltar.dart' show gibraltar;
import 'france.dart' show france;
import 'ghana.dart' show ghana;
import 'greece.dart' show greece;
import 'germany.dart' show germany;
import 'greenland.dart' show greenland;
import 'guadeloupe.dart' show guadeloupe;
import 'grenada.dart' show grenada;
import 'guam.dart' show guam;
import 'guernsey_and_alderney.dart' show guernseyandAlderney;
import 'guatemala.dart' show guatemala;
import 'guinea.dart' show guinea;
import 'guinea_bissau.dart' show guineaBissau;
import 'guyana.dart' show guyana;
import 'haiti.dart' show haiti;
import 'heard_island_and_mcdonald_islands.dart' show heardIslandandMcDonaldIslands;
import 'honduras.dart' show honduras;
import 'iceland.dart' show iceland;
import 'hong_kong_s_a_r_.dart' show hongKongSAR;
import 'iraq.dart' show iraq;
import 'hungary.dart' show hungary;
import 'iran.dart' show iran;
import 'india.dart' show india;
import 'ireland.dart' show ireland;
import 'israel.dart' show israel;
import 'indonesia.dart' show indonesia;
import 'jordan.dart' show jordan;
import 'jersey.dart' show jersey;
import 'japan.dart' show japan;
import 'italy.dart' show italy;
import 'kiribati.dart' show kiribati;
import 'kuwait.dart' show kuwait;
import 'kosovo.dart' show kosovo;
import 'jamaica.dart' show jamaica;
import 'laos.dart' show laos;
import 'kazakhstan.dart' show kazakhstan;
import 'kenya.dart' show kenya;
import 'latvia.dart' show latvia;
import 'lebanon.dart' show lebanon;
import 'kyrgyzstan.dart' show kyrgyzstan;
import 'lesotho.dart' show lesotho;
import 'libya.dart' show libya;
import 'liberia.dart' show liberia;
import 'liechtenstein.dart' show liechtenstein;
import 'lithuania.dart' show lithuania;
import 'luxembourg.dart' show luxembourg;
import 'macau_s_a_r_.dart' show macauSAR;
import 'macedonia.dart' show macedonia;
import 'madagascar.dart' show madagascar;
import 'malawi.dart' show malawi;
import 'malaysia.dart' show malaysia;
import 'mali.dart' show mali;
import 'maldives.dart' show maldives;
import 'marshall_islands.dart' show marshallIslands;
import 'malta.dart' show malta;
import 'martinique.dart' show martinique;
import 'mauritania.dart' show mauritania;
import 'man_isle_of_.dart' show manIsleof;
import 'mauritius.dart' show mauritius;
import 'mayotte.dart' show mayotte;
import 'micronesia.dart' show micronesia;
import 'moldova.dart' show moldova;
import 'montserrat.dart' show montserrat;
import 'morocco.dart' show morocco;
import 'montenegro.dart' show montenegro;
import 'mexico.dart' show mexico;
import 'monaco.dart' show monaco;
import 'mongolia.dart' show mongolia;
import 'myanmar.dart' show myanmar;
import 'mozambique.dart' show mozambique;
import 'namibia.dart' show namibia;
import 'nauru.dart' show nauru;
import 'nepal.dart' show nepal;
import 'new_caledonia.dart' show newCaledonia;
import 'netherlands.dart' show netherlands;
import 'nicaragua.dart' show nicaragua;
import 'new_zealand.dart' show newZealand;
import 'nigeria.dart' show nigeria;
import 'niger.dart' show niger;
import 'niue.dart' show niue;
import 'norfolk_island.dart' show norfolkIsland;
import 'north_korea.dart' show northKorea;
import 'northern_mariana_islands.dart' show northernMarianaIslands;
import 'oman.dart' show oman;
import 'norway.dart' show norway;
import 'pakistan.dart' show pakistan;
import 'palau.dart' show palau;
import 'panama.dart' show panama;
import 'palestinian_territory_occupied.dart' show palestinianTerritoryOccupied;
import 'paraguay.dart' show paraguay;
import 'papua_new_guinea.dart' show papuanewGuinea;
import 'peru.dart' show peru;
import 'pitcairn_island.dart' show pitcairnIsland;
import 'poland.dart' show poland;
import 'puerto_rico.dart' show puertoRico;
import 'portugal.dart' show portugal;
import 'qatar.dart' show qatar;
import 'philippines.dart' show philippines;
import 'reunion.dart' show reunion;
import 'rwanda.dart' show rwanda;
import 'saint_helena.dart' show saintHelena;
import 'saint_kitts_and_nevis.dart' show saintKittsAndNevis;
import 'romania.dart' show romania;
import 'russia.dart' show russia;
import 'saint_vincent_and_the_grenadines.dart' show saintVincentAndTheGrenadines;
import 'saint_pierre_and_miquelon.dart' show saintPierreandMiquelon;
import 'saint_barthelemy.dart' show saintBarthelemy;
import 'saint_martin_french_part_.dart' show saintMartinFrenchpart;
import 'saint_lucia.dart' show saintLucia;
import 'samoa.dart' show samoa;
import 'san_marino.dart' show sanMarino;
import 'senegal.dart' show senegal;
import 'saudi_arabia.dart' show saudiArabia;
import 'seychelles.dart' show seychelles;
import 'serbia.dart' show serbia;
import 'sao_tome_and_principe.dart' show saoTomeandPrincipe;
import 'sierra_leone.dart' show sierraLeone;
import 'singapore.dart' show singapore;
import 'sint_maarten_dutch_part_.dart' show sintMaartenDutchpart;
import 'slovenia.dart' show slovenia;
import 'slovakia.dart' show slovakia;
import 'solomon_islands.dart' show solomonIslands;
import 'somalia.dart' show somalia;
import 'south_africa.dart' show southAfrica;
import 'south_korea.dart' show southKorea;
import 'south_georgia.dart' show southGeorgia;
import 'south_sudan.dart' show southSudan;
import 'spain.dart' show spain;
import 'sri_lanka.dart' show sriLanka;
import 'svalbard_and_jan_mayen_islands.dart' show svalbardAndJanMayenIslands;
import 'suriname.dart' show suriname;
import 'sudan.dart' show sudan;
import 'sweden.dart' show sweden;
import 'swaziland.dart' show swaziland;
import 'syria.dart' show syria;
import 'switzerland.dart' show switzerland;
import 'taiwan.dart' show taiwan;
import 'tajikistan.dart' show tajikistan;
import 'tanzania.dart' show tanzania;
import 'togo.dart' show togo;
import 'tokelau.dart' show tokelau;
import 'tonga.dart' show tonga;
import 'thailand.dart' show thailand;
import 'trinidad_and_tobago.dart' show trinidadAndTobago;
import 'turkey.dart' show turkey;
import 'tunisia.dart' show tunisia;
import 'turks_and_caicos_islands.dart' show turksAndCaicosIslands;
import 'turkmenistan.dart' show turkmenistan;
import 'tuvalu.dart' show tuvalu;
import 'uganda.dart' show uganda;
import 'united_arab_emirates.dart' show unitedArabEmirates;
import 'ukraine.dart' show ukraine;
import 'united_states_minor_outlying_islands.dart' show unitedStatesMinorOutlyingIslands;
import 'vanuatu.dart' show vanuatu;
import 'uruguay.dart' show uruguay;
import 'united_kingdom.dart' show unitedKingdom;
import 'uzbekistan.dart' show uzbekistan;
import 'venezuela.dart' show venezuela;
import 'united_states.dart' show unitedStates;
import 'vatican_city_state_holy_see_.dart' show vaticanCityStateHolySee;
import 'vietnam.dart' show vietnam;
import 'virgin_islands_british_.dart' show virginIslandsBritish;
import 'wallis_and_futuna_islands.dart' show wallisAndFutunaIslands;
import 'virgin_islands_us_.dart' show virginIslandsUS;
import 'yemen.dart' show yemen;
import 'western_sahara.dart' show westernSahara;
import 'zimbabwe.dart' show zimbabwe;
import 'zambia.dart' show zambia;

const List<Country> countries = [
  alandIslands,
  albania,
  afghanistan,
  algeria,
  americanSamoa,
  andorra,
  angola,
  anguilla,
  antiguaAndBarbuda,
  antarctica,
  argentina,
  aruba,
  australia,
  armenia,
  austria,
  bahamasThe,
  azerbaijan,
  bahrain,
  bangladesh,
  barbados,
  belarus,
  belize,
  belgium,
  bermuda,
  benin,
  bhutan,
  bolivia,
  bonaireSintEustatiusandSaba,
  bosniaandHerzegovina,
  botswana,
  bouvetIsland,
  brunei,
  britishIndianOceanTerritory,
  bulgaria,
  brazil,
  burkinaFaso,
  burundi,
  cambodia,
  cameroon,
  canada,
  caymanIslands,
  centralAfricanRepublic,
  capeVerde,
  chile,
  chad,
  china,
  christmasIsland,
  cocosKeelingIslands,
  colombia,
  comoros,
  congo,
  cookIslands,
  coteDIvoireIvoryCoast,
  croatia,
  cuba,
  costaRica,
  cyprus,
  curaao,
  czechRepublic,
  djibouti,
  democraticRepublicoftheCongo,
  denmark,
  dominica,
  dominicanRepublic,
  eastTimor,
  ecuador,
  egypt,
  eritrea,
  elSalvador,
  ethiopia,
  estonia,
  equatorialGuinea,
  falklandIslands,
  faroeIslands,
  fijiIslands,
  finland,
  frenchPolynesia,
  frenchGuiana,
  frenchSouthernTerritories,
  gabon,
  georgia,
  gambiaThe,
  gibraltar,
  france,
  ghana,
  greece,
  germany,
  greenland,
  guadeloupe,
  grenada,
  guam,
  guernseyandAlderney,
  guatemala,
  guinea,
  guineaBissau,
  guyana,
  haiti,
  heardIslandandMcDonaldIslands,
  honduras,
  iceland,
  hongKongSAR,
  iraq,
  hungary,
  iran,
  india,
  ireland,
  israel,
  indonesia,
  jordan,
  jersey,
  japan,
  italy,
  kiribati,
  kuwait,
  kosovo,
  jamaica,
  laos,
  kazakhstan,
  kenya,
  latvia,
  lebanon,
  kyrgyzstan,
  lesotho,
  libya,
  liberia,
  liechtenstein,
  lithuania,
  luxembourg,
  macauSAR,
  macedonia,
  madagascar,
  malawi,
  malaysia,
  mali,
  maldives,
  marshallIslands,
  malta,
  martinique,
  mauritania,
  manIsleof,
  mauritius,
  mayotte,
  micronesia,
  moldova,
  montserrat,
  morocco,
  montenegro,
  mexico,
  monaco,
  mongolia,
  myanmar,
  mozambique,
  namibia,
  nauru,
  nepal,
  newCaledonia,
  netherlands,
  nicaragua,
  newZealand,
  nigeria,
  niger,
  niue,
  norfolkIsland,
  northKorea,
  northernMarianaIslands,
  oman,
  norway,
  pakistan,
  palau,
  panama,
  palestinianTerritoryOccupied,
  paraguay,
  papuanewGuinea,
  peru,
  pitcairnIsland,
  poland,
  puertoRico,
  portugal,
  qatar,
  philippines,
  reunion,
  rwanda,
  saintHelena,
  saintKittsAndNevis,
  romania,
  russia,
  saintVincentAndTheGrenadines,
  saintPierreandMiquelon,
  saintBarthelemy,
  saintMartinFrenchpart,
  saintLucia,
  samoa,
  sanMarino,
  senegal,
  saudiArabia,
  seychelles,
  serbia,
  saoTomeandPrincipe,
  sierraLeone,
  singapore,
  sintMaartenDutchpart,
  slovenia,
  slovakia,
  solomonIslands,
  somalia,
  southAfrica,
  southKorea,
  southGeorgia,
  southSudan,
  spain,
  sriLanka,
  svalbardAndJanMayenIslands,
  suriname,
  sudan,
  sweden,
  swaziland,
  syria,
  switzerland,
  taiwan,
  tajikistan,
  tanzania,
  togo,
  tokelau,
  tonga,
  thailand,
  trinidadAndTobago,
  turkey,
  tunisia,
  turksAndCaicosIslands,
  turkmenistan,
  tuvalu,
  uganda,
  unitedArabEmirates,
  ukraine,
  unitedStatesMinorOutlyingIslands,
  vanuatu,
  uruguay,
  unitedKingdom,
  uzbekistan,
  venezuela,
  unitedStates,
  vaticanCityStateHolySee,
  vietnam,
  virginIslandsBritish,
  wallisAndFutunaIslands,
  virginIslandsUS,
  yemen,
  westernSahara,
  zimbabwe,
  zambia
];
