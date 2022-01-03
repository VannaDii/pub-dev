/// Access to known countries and their meta data.
library geography;

import '../base.dart';

// ignore: slash_for_doc_comments
/** BEGIN AUTO_GENERATED CODE **/

import 'aland_islands.dart' show alandIslands;
import 'albania.dart' show albania;
import 'algeria.dart' show algeria;
import 'american_samoa.dart' show americanSamoa;
import 'andorra.dart' show andorra;
import 'afghanistan.dart' show afghanistan;
import 'angola.dart' show angola;
import 'anguilla.dart' show anguilla;
import 'antarctica.dart' show antarctica;
import 'antigua_and_barbuda.dart' show antiguaAndBarbuda;
import 'aruba.dart' show aruba;
import 'armenia.dart' show armenia;
import 'australia.dart' show australia;
import 'argentina.dart' show argentina;
import 'austria.dart' show austria;
import 'azerbaijan.dart' show azerbaijan;
import 'bahamas_the.dart' show bahamasThe;
import 'bahrain.dart' show bahrain;
import 'bangladesh.dart' show bangladesh;
import 'belarus.dart' show belarus;
import 'barbados.dart' show barbados;
import 'belgium.dart' show belgium;
import 'belize.dart' show belize;
import 'benin.dart' show benin;
import 'bermuda.dart' show bermuda;
import 'bonaire_sint_eustatius_and_saba.dart' show bonaireSintEustatiusandSaba;
import 'bolivia.dart' show bolivia;
import 'bosnia_and_herzegovina.dart' show bosniaandHerzegovina;
import 'bhutan.dart' show bhutan;
import 'bouvet_island.dart' show bouvetIsland;
import 'botswana.dart' show botswana;
import 'british_indian_ocean_territory.dart' show britishIndianOceanTerritory;
import 'brunei.dart' show brunei;
import 'brazil.dart' show brazil;
import 'bulgaria.dart' show bulgaria;
import 'burundi.dart' show burundi;
import 'cameroon.dart' show cameroon;
import 'burkina_faso.dart' show burkinaFaso;
import 'cambodia.dart' show cambodia;
import 'canada.dart' show canada;
import 'central_african_republic.dart' show centralAfricanRepublic;
import 'cayman_islands.dart' show caymanIslands;
import 'cape_verde.dart' show capeVerde;
import 'chile.dart' show chile;
import 'china.dart' show china;
import 'christmas_island.dart' show christmasIsland;
import 'chad.dart' show chad;
import 'cocos_keeling_islands.dart' show cocosKeelingIslands;
import 'comoros.dart' show comoros;
import 'colombia.dart' show colombia;
import 'congo.dart' show congo;
import 'cura_ao.dart' show curaao;
import 'costa_rica.dart' show costaRica;
import 'cook_islands.dart' show cookIslands;
import 'croatia.dart' show croatia;
import 'cote_d_ivoire_ivory_coast_.dart' show coteDIvoireIvoryCoast;
import 'czech_republic.dart' show czechRepublic;
import 'cyprus.dart' show cyprus;
import 'djibouti.dart' show djibouti;
import 'denmark.dart' show denmark;
import 'cuba.dart' show cuba;
import 'democratic_republic_of_the_congo.dart' show democraticRepublicoftheCongo;
import 'dominican_republic.dart' show dominicanRepublic;
import 'ecuador.dart' show ecuador;
import 'east_timor.dart' show eastTimor;
import 'dominica.dart' show dominica;
import 'eritrea.dart' show eritrea;
import 'falkland_islands.dart' show falklandIslands;
import 'egypt.dart' show egypt;
import 'equatorial_guinea.dart' show equatorialGuinea;
import 'faroe_islands.dart' show faroeIslands;
import 'ethiopia.dart' show ethiopia;
import 'el_salvador.dart' show elSalvador;
import 'estonia.dart' show estonia;
import 'french_guiana.dart' show frenchGuiana;
import 'fiji_islands.dart' show fijiIslands;
import 'french_polynesia.dart' show frenchPolynesia;
import 'france.dart' show france;
import 'finland.dart' show finland;
import 'french_southern_territories.dart' show frenchSouthernTerritories;
import 'gibraltar.dart' show gibraltar;
import 'gabon.dart' show gabon;
import 'gambia_the.dart' show gambiaThe;
import 'georgia.dart' show georgia;
import 'germany.dart' show germany;
import 'greenland.dart' show greenland;
import 'ghana.dart' show ghana;
import 'greece.dart' show greece;
import 'grenada.dart' show grenada;
import 'guam.dart' show guam;
import 'guinea.dart' show guinea;
import 'guadeloupe.dart' show guadeloupe;
import 'guernsey_and_alderney.dart' show guernseyandAlderney;
import 'guatemala.dart' show guatemala;
import 'guinea_bissau.dart' show guineaBissau;
import 'guyana.dart' show guyana;
import 'haiti.dart' show haiti;
import 'heard_island_and_mcdonald_islands.dart' show heardIslandandMcDonaldIslands;
import 'honduras.dart' show honduras;
import 'hong_kong_s_a_r_.dart' show hongKongSAR;
import 'hungary.dart' show hungary;
import 'iceland.dart' show iceland;
import 'indonesia.dart' show indonesia;
import 'iran.dart' show iran;
import 'iraq.dart' show iraq;
import 'ireland.dart' show ireland;
import 'india.dart' show india;
import 'jamaica.dart' show jamaica;
import 'israel.dart' show israel;
import 'japan.dart' show japan;
import 'italy.dart' show italy;
import 'kazakhstan.dart' show kazakhstan;
import 'jordan.dart' show jordan;
import 'jersey.dart' show jersey;
import 'kosovo.dart' show kosovo;
import 'kiribati.dart' show kiribati;
import 'kenya.dart' show kenya;
import 'laos.dart' show laos;
import 'kyrgyzstan.dart' show kyrgyzstan;
import 'lesotho.dart' show lesotho;
import 'latvia.dart' show latvia;
import 'kuwait.dart' show kuwait;
import 'lebanon.dart' show lebanon;
import 'liberia.dart' show liberia;
import 'liechtenstein.dart' show liechtenstein;
import 'lithuania.dart' show lithuania;
import 'libya.dart' show libya;
import 'madagascar.dart' show madagascar;
import 'macau_s_a_r_.dart' show macauSAR;
import 'malaysia.dart' show malaysia;
import 'luxembourg.dart' show luxembourg;
import 'maldives.dart' show maldives;
import 'macedonia.dart' show macedonia;
import 'malawi.dart' show malawi;
import 'martinique.dart' show martinique;
import 'man_isle_of_.dart' show manIsleof;
import 'mali.dart' show mali;
import 'mongolia.dart' show mongolia;
import 'micronesia.dart' show micronesia;
import 'malta.dart' show malta;
import 'myanmar.dart' show myanmar;
import 'morocco.dart' show morocco;
import 'mayotte.dart' show mayotte;
import 'moldova.dart' show moldova;
import 'mauritius.dart' show mauritius;
import 'mexico.dart' show mexico;
import 'namibia.dart' show namibia;
import 'monaco.dart' show monaco;
import 'nauru.dart' show nauru;
import 'nepal.dart' show nepal;
import 'mauritania.dart' show mauritania;
import 'montenegro.dart' show montenegro;
import 'norfolk_island.dart' show norfolkIsland;
import 'palau.dart' show palau;
import 'marshall_islands.dart' show marshallIslands;
import 'reunion.dart' show reunion;
import 'northern_mariana_islands.dart' show northernMarianaIslands;
import 'montserrat.dart' show montserrat;
import 'new_caledonia.dart' show newCaledonia;
import 'palestinian_territory_occupied.dart' show palestinianTerritoryOccupied;
import 'pitcairn_island.dart' show pitcairnIsland;
import 'puerto_rico.dart' show puertoRico;
import 'niue.dart' show niue;
import 'netherlands.dart' show netherlands;
import 'north_korea.dart' show northKorea;
import 'new_zealand.dart' show newZealand;
import 'niger.dart' show niger;
import 'peru.dart' show peru;
import 'norway.dart' show norway;
import 'nigeria.dart' show nigeria;
import 'nicaragua.dart' show nicaragua;
import 'paraguay.dart' show paraguay;
import 'papua_new_guinea.dart' show papuanewGuinea;
import 'poland.dart' show poland;
import 'pakistan.dart' show pakistan;
import 'mozambique.dart' show mozambique;
import 'portugal.dart' show portugal;
import 'qatar.dart' show qatar;
import 'romania.dart' show romania;
import 'oman.dart' show oman;
import 'panama.dart' show panama;
import 'philippines.dart' show philippines;
import 'saint_helena.dart' show saintHelena;
import 'russia.dart' show russia;
import 'rwanda.dart' show rwanda;
import 'saint_lucia.dart' show saintLucia;
import 'saint_martin_french_part_.dart' show saintMartinFrenchpart;
import 'saint_pierre_and_miquelon.dart' show saintPierreandMiquelon;
import 'saint_kitts_and_nevis.dart' show saintKittsAndNevis;
import 'samoa.dart' show samoa;
import 'saint_barthelemy.dart' show saintBarthelemy;
import 'saint_vincent_and_the_grenadines.dart' show saintVincentAndTheGrenadines;
import 'san_marino.dart' show sanMarino;
import 'sao_tome_and_principe.dart' show saoTomeandPrincipe;
import 'senegal.dart' show senegal;
import 'saudi_arabia.dart' show saudiArabia;
import 'serbia.dart' show serbia;
import 'sierra_leone.dart' show sierraLeone;
import 'solomon_islands.dart' show solomonIslands;
import 'seychelles.dart' show seychelles;
import 'slovenia.dart' show slovenia;
import 'slovakia.dart' show slovakia;
import 'south_africa.dart' show southAfrica;
import 'south_georgia.dart' show southGeorgia;
import 'south_korea.dart' show southKorea;
import 'sint_maarten_dutch_part_.dart' show sintMaartenDutchpart;
import 'singapore.dart' show singapore;
import 'spain.dart' show spain;
import 'south_sudan.dart' show southSudan;
import 'somalia.dart' show somalia;
import 'sri_lanka.dart' show sriLanka;
import 'sudan.dart' show sudan;
import 'svalbard_and_jan_mayen_islands.dart' show svalbardAndJanMayenIslands;
import 'suriname.dart' show suriname;
import 'swaziland.dart' show swaziland;
import 'sweden.dart' show sweden;
import 'switzerland.dart' show switzerland;
import 'syria.dart' show syria;
import 'taiwan.dart' show taiwan;
import 'tajikistan.dart' show tajikistan;
import 'togo.dart' show togo;
import 'thailand.dart' show thailand;
import 'tokelau.dart' show tokelau;
import 'tanzania.dart' show tanzania;
import 'trinidad_and_tobago.dart' show trinidadAndTobago;
import 'tunisia.dart' show tunisia;
import 'tonga.dart' show tonga;
import 'turks_and_caicos_islands.dart' show turksAndCaicosIslands;
import 'turkey.dart' show turkey;
import 'tuvalu.dart' show tuvalu;
import 'turkmenistan.dart' show turkmenistan;
import 'uganda.dart' show uganda;
import 'united_arab_emirates.dart' show unitedArabEmirates;
import 'ukraine.dart' show ukraine;
import 'united_states_minor_outlying_islands.dart' show unitedStatesMinorOutlyingIslands;
import 'united_kingdom.dart' show unitedKingdom;
import 'uruguay.dart' show uruguay;
import 'uzbekistan.dart' show uzbekistan;
import 'venezuela.dart' show venezuela;
import 'vanuatu.dart' show vanuatu;
import 'vatican_city_state_holy_see_.dart' show vaticanCityStateHolySee;
import 'vietnam.dart' show vietnam;
import 'virgin_islands_british_.dart' show virginIslandsBritish;
import 'wallis_and_futuna_islands.dart' show wallisAndFutunaIslands;
import 'virgin_islands_us_.dart' show virginIslandsUS;
import 'united_states.dart' show unitedStates;
import 'zambia.dart' show zambia;
import 'yemen.dart' show yemen;
import 'western_sahara.dart' show westernSahara;
import 'zimbabwe.dart' show zimbabwe;

/// A list of all known countries on earth and their metadata
const List<Country> countries = [
  alandIslands,
  albania,
  algeria,
  americanSamoa,
  andorra,
  afghanistan,
  angola,
  anguilla,
  antarctica,
  antiguaAndBarbuda,
  aruba,
  armenia,
  australia,
  argentina,
  austria,
  azerbaijan,
  bahamasThe,
  bahrain,
  bangladesh,
  belarus,
  barbados,
  belgium,
  belize,
  benin,
  bermuda,
  bonaireSintEustatiusandSaba,
  bolivia,
  bosniaandHerzegovina,
  bhutan,
  bouvetIsland,
  botswana,
  britishIndianOceanTerritory,
  brunei,
  brazil,
  bulgaria,
  burundi,
  cameroon,
  burkinaFaso,
  cambodia,
  canada,
  centralAfricanRepublic,
  caymanIslands,
  capeVerde,
  chile,
  china,
  christmasIsland,
  chad,
  cocosKeelingIslands,
  comoros,
  colombia,
  congo,
  curaao,
  costaRica,
  cookIslands,
  croatia,
  coteDIvoireIvoryCoast,
  czechRepublic,
  cyprus,
  djibouti,
  denmark,
  cuba,
  democraticRepublicoftheCongo,
  dominicanRepublic,
  ecuador,
  eastTimor,
  dominica,
  eritrea,
  falklandIslands,
  egypt,
  equatorialGuinea,
  faroeIslands,
  ethiopia,
  elSalvador,
  estonia,
  frenchGuiana,
  fijiIslands,
  frenchPolynesia,
  france,
  finland,
  frenchSouthernTerritories,
  gibraltar,
  gabon,
  gambiaThe,
  georgia,
  germany,
  greenland,
  ghana,
  greece,
  grenada,
  guam,
  guinea,
  guadeloupe,
  guernseyandAlderney,
  guatemala,
  guineaBissau,
  guyana,
  haiti,
  heardIslandandMcDonaldIslands,
  honduras,
  hongKongSAR,
  hungary,
  iceland,
  indonesia,
  iran,
  iraq,
  ireland,
  india,
  jamaica,
  israel,
  japan,
  italy,
  kazakhstan,
  jordan,
  jersey,
  kosovo,
  kiribati,
  kenya,
  laos,
  kyrgyzstan,
  lesotho,
  latvia,
  kuwait,
  lebanon,
  liberia,
  liechtenstein,
  lithuania,
  libya,
  madagascar,
  macauSAR,
  malaysia,
  luxembourg,
  maldives,
  macedonia,
  malawi,
  martinique,
  manIsleof,
  mali,
  mongolia,
  micronesia,
  malta,
  myanmar,
  morocco,
  mayotte,
  moldova,
  mauritius,
  mexico,
  namibia,
  monaco,
  nauru,
  nepal,
  mauritania,
  montenegro,
  norfolkIsland,
  palau,
  marshallIslands,
  reunion,
  northernMarianaIslands,
  montserrat,
  newCaledonia,
  palestinianTerritoryOccupied,
  pitcairnIsland,
  puertoRico,
  niue,
  netherlands,
  northKorea,
  newZealand,
  niger,
  peru,
  norway,
  nigeria,
  nicaragua,
  paraguay,
  papuanewGuinea,
  poland,
  pakistan,
  mozambique,
  portugal,
  qatar,
  romania,
  oman,
  panama,
  philippines,
  saintHelena,
  russia,
  rwanda,
  saintLucia,
  saintMartinFrenchpart,
  saintPierreandMiquelon,
  saintKittsAndNevis,
  samoa,
  saintBarthelemy,
  saintVincentAndTheGrenadines,
  sanMarino,
  saoTomeandPrincipe,
  senegal,
  saudiArabia,
  serbia,
  sierraLeone,
  solomonIslands,
  seychelles,
  slovenia,
  slovakia,
  southAfrica,
  southGeorgia,
  southKorea,
  sintMaartenDutchpart,
  singapore,
  spain,
  southSudan,
  somalia,
  sriLanka,
  sudan,
  svalbardAndJanMayenIslands,
  suriname,
  swaziland,
  sweden,
  switzerland,
  syria,
  taiwan,
  tajikistan,
  togo,
  thailand,
  tokelau,
  tanzania,
  trinidadAndTobago,
  tunisia,
  tonga,
  turksAndCaicosIslands,
  turkey,
  tuvalu,
  turkmenistan,
  uganda,
  unitedArabEmirates,
  ukraine,
  unitedStatesMinorOutlyingIslands,
  unitedKingdom,
  uruguay,
  uzbekistan,
  venezuela,
  vanuatu,
  vaticanCityStateHolySee,
  vietnam,
  virginIslandsBritish,
  wallisAndFutunaIslands,
  virginIslandsUS,
  unitedStates,
  zambia,
  yemen,
  westernSahara,
  zimbabwe
];
