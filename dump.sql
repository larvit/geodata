-- Adminer 4.1.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE `geo_regions` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Reference: http://cldr.unicode.org/index/downloads - updated 2015-02-22';

INSERT INTO `geo_regions` (`id`, `name`) VALUES
(1,	'World'),
(2,	'Africa'),
(3,	'North America'),
(5,	'South America'),
(9,	'Oceania'),
(11,	'Western Africa'),
(13,	'Central America'),
(14,	'Eastern Africa'),
(15,	'Northern Africa'),
(17,	'Middle Africa'),
(18,	'Southern Africa'),
(19,	'Americas'),
(21,	'Northern America'),
(29,	'Caribbean'),
(30,	'Eastern Asia'),
(34,	'Southern Asia'),
(35,	'Southeast Asia'),
(39,	'Southern Europe'),
(53,	'Australasia'),
(54,	'Melanesia'),
(57,	'Micronesian Region'),
(61,	'Polynesia'),
(142,	'Asia'),
(143,	'Central Asia'),
(145,	'Western Asia'),
(150,	'Europe'),
(151,	'Eastern Europe'),
(154,	'Northern Europe'),
(155,	'Western Europe'),
(419,	'Latin America');

CREATE TABLE `geo_regions_region` (
  `id` smallint(5) unsigned NOT NULL,
  `contains` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`,`contains`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Reference: http://cldr.unicode.org/index/downloads - updated 2015-02-22';

INSERT INTO `geo_regions_region` (`id`, `contains`) VALUES
(1,	2),
(1,	9),
(1,	19),
(1,	142),
(1,	150),
(2,	11),
(2,	14),
(2,	15),
(2,	17),
(2,	18),
(3,	13),
(3,	21),
(3,	29),
(9,	53),
(9,	54),
(9,	57),
(9,	61),
(19,	5),
(19,	13),
(19,	21),
(19,	29),
(142,	30),
(142,	34),
(142,	35),
(142,	143),
(142,	145),
(150,	39),
(150,	151),
(150,	154),
(150,	155),
(419,	5),
(419,	13),
(419,	29);

CREATE TABLE `geo_regions_territory` (
  `id` smallint(5) unsigned NOT NULL,
  `contains` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`contains`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Reference: http://cldr.unicode.org/index/downloads - updated 2015-02-22';

INSERT INTO `geo_regions_territory` (`id`, `contains`) VALUES
(5,	'AR'),
(5,	'BO'),
(5,	'BR'),
(5,	'CL'),
(5,	'CO'),
(5,	'EC'),
(5,	'FK'),
(5,	'GF'),
(5,	'GY'),
(5,	'PE'),
(5,	'PY'),
(5,	'SR'),
(5,	'UY'),
(5,	'VE'),
(9,	'QO'),
(11,	'BF'),
(11,	'BJ'),
(11,	'CI'),
(11,	'CV'),
(11,	'GH'),
(11,	'GM'),
(11,	'GN'),
(11,	'GW'),
(11,	'LR'),
(11,	'ML'),
(11,	'MR'),
(11,	'NE'),
(11,	'NG'),
(11,	'SH'),
(11,	'SL'),
(11,	'SN'),
(11,	'TG'),
(13,	'BZ'),
(13,	'CR'),
(13,	'GT'),
(13,	'HN'),
(13,	'MX'),
(13,	'NI'),
(13,	'PA'),
(13,	'SV'),
(14,	'BI'),
(14,	'DJ'),
(14,	'ER'),
(14,	'ET'),
(14,	'KE'),
(14,	'KM'),
(14,	'MG'),
(14,	'MU'),
(14,	'MW'),
(14,	'MZ'),
(14,	'RE'),
(14,	'RW'),
(14,	'SC'),
(14,	'SO'),
(14,	'TZ'),
(14,	'UG'),
(14,	'YT'),
(14,	'ZM'),
(14,	'ZW'),
(15,	'DZ'),
(15,	'EA'),
(15,	'EG'),
(15,	'EH'),
(15,	'IC'),
(15,	'LY'),
(15,	'MA'),
(15,	'SD'),
(15,	'SS'),
(15,	'TN'),
(17,	'AO'),
(17,	'CD'),
(17,	'CF'),
(17,	'CG'),
(17,	'CM'),
(17,	'GA'),
(17,	'GQ'),
(17,	'ST'),
(17,	'TD'),
(18,	'BW'),
(18,	'LS'),
(18,	'NA'),
(18,	'SZ'),
(18,	'ZA'),
(21,	'BM'),
(21,	'CA'),
(21,	'GL'),
(21,	'PM'),
(21,	'US'),
(29,	'AG'),
(29,	'AI'),
(29,	'AW'),
(29,	'BB'),
(29,	'BL'),
(29,	'BQ'),
(29,	'BS'),
(29,	'CU'),
(29,	'CW'),
(29,	'DM'),
(29,	'DO'),
(29,	'GD'),
(29,	'GP'),
(29,	'HT'),
(29,	'JM'),
(29,	'KN'),
(29,	'KY'),
(29,	'LC'),
(29,	'MF'),
(29,	'MQ'),
(29,	'MS'),
(29,	'PR'),
(29,	'SX'),
(29,	'TC'),
(29,	'TT'),
(29,	'VC'),
(29,	'VG'),
(29,	'VI'),
(30,	'CN'),
(30,	'HK'),
(30,	'JP'),
(30,	'KP'),
(30,	'KR'),
(30,	'MN'),
(30,	'MO'),
(30,	'TW'),
(34,	'AF'),
(34,	'BD'),
(34,	'BT'),
(34,	'IN'),
(34,	'IR'),
(34,	'LK'),
(34,	'MV'),
(34,	'NP'),
(34,	'PK'),
(35,	'BN'),
(35,	'ID'),
(35,	'KH'),
(35,	'LA'),
(35,	'MM'),
(35,	'MY'),
(35,	'PH'),
(35,	'SG'),
(35,	'TH'),
(35,	'TL'),
(35,	'VN'),
(39,	'AD'),
(39,	'AL'),
(39,	'BA'),
(39,	'ES'),
(39,	'GI'),
(39,	'GR'),
(39,	'HR'),
(39,	'IT'),
(39,	'ME'),
(39,	'MK'),
(39,	'MT'),
(39,	'PT'),
(39,	'RS'),
(39,	'SI'),
(39,	'SM'),
(39,	'VA'),
(39,	'XK'),
(53,	'AU'),
(53,	'NF'),
(53,	'NZ'),
(54,	'FJ'),
(54,	'NC'),
(54,	'PG'),
(54,	'SB'),
(54,	'VU'),
(57,	'FM'),
(57,	'GU'),
(57,	'KI'),
(57,	'MH'),
(57,	'MP'),
(57,	'NR'),
(57,	'PW'),
(61,	'AS'),
(61,	'CK'),
(61,	'NU'),
(61,	'PF'),
(61,	'PN'),
(61,	'TK'),
(61,	'TO'),
(61,	'TV'),
(61,	'WF'),
(61,	'WS'),
(143,	'KG'),
(143,	'KZ'),
(143,	'TJ'),
(143,	'TM'),
(143,	'UZ'),
(145,	'AE'),
(145,	'AM'),
(145,	'AZ'),
(145,	'BH'),
(145,	'CY'),
(145,	'GE'),
(145,	'IL'),
(145,	'IQ'),
(145,	'JO'),
(145,	'KW'),
(145,	'LB'),
(145,	'OM'),
(145,	'PS'),
(145,	'QA'),
(145,	'SA'),
(145,	'SY'),
(145,	'TR'),
(145,	'YE'),
(151,	'BG'),
(151,	'BY'),
(151,	'CZ'),
(151,	'HU'),
(151,	'MD'),
(151,	'PL'),
(151,	'RO'),
(151,	'RU'),
(151,	'SK'),
(151,	'UA'),
(154,	'AX'),
(154,	'DK'),
(154,	'EE'),
(154,	'FI'),
(154,	'FO'),
(154,	'GB'),
(154,	'GG'),
(154,	'IE'),
(154,	'IM'),
(154,	'IS'),
(154,	'JE'),
(154,	'LT'),
(154,	'LV'),
(154,	'NO'),
(154,	'SE'),
(154,	'SJ'),
(155,	'AT'),
(155,	'BE'),
(155,	'CH'),
(155,	'DE'),
(155,	'FR'),
(155,	'LI'),
(155,	'LU'),
(155,	'MC'),
(155,	'NL');

CREATE TABLE `geo_territories` (
  `id` smallint(5) unsigned NOT NULL,
  `iso3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `iso2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iso3` (`iso3`),
  UNIQUE KEY `iso2` (`iso2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Reference: http://en.wikipedia.org/wiki/ISO_3166, updated 2015-02-22';

INSERT INTO `geo_territories` (`id`, `iso3`, `iso2`, `name`) VALUES
(4,	'AFG',	'AF',	'Afghanistan'),
(8,	'ALB',	'AL',	'Albania'),
(10,	'ATA',	'AQ',	'Antarctica'),
(12,	'DZA',	'DZ',	'Algeria'),
(16,	'ASM',	'AS',	'American Samoa'),
(20,	'AND',	'AD',	'Andorra'),
(24,	'AGO',	'AO',	'Angola'),
(28,	'ATG',	'AG',	'Antigua and Barbuda'),
(31,	'AZE',	'AZ',	'Azerbaijan'),
(32,	'ARG',	'AR',	'Argentina'),
(36,	'AUS',	'AU',	'Australia'),
(40,	'AUT',	'AT',	'Austria'),
(44,	'BHS',	'BS',	'Bahamas'),
(48,	'BHR',	'BH',	'Bahrain'),
(50,	'BGD',	'BD',	'Bangladesh'),
(51,	'ARM',	'AM',	'Armenia'),
(52,	'BRB',	'BB',	'Barbados'),
(56,	'BEL',	'BE',	'Belgium'),
(60,	'BMU',	'BM',	'Bermuda'),
(64,	'BTN',	'BT',	'Bhutan'),
(68,	'BOL',	'BO',	'Bolivia (Plurinational State of)'),
(70,	'BIH',	'BA',	'Bosnia and Herzegovina'),
(72,	'BWA',	'BW',	'Botswana'),
(74,	'BVT',	'BV',	'Bouvet Island'),
(76,	'BRA',	'BR',	'Brazil'),
(84,	'BLZ',	'BZ',	'Belize'),
(86,	'IOT',	'IO',	'British Indian Ocean Territory'),
(90,	'SLB',	'SB',	'Solomon Islands'),
(92,	'VGB',	'VG',	'Virgin Islands (British)'),
(96,	'BRN',	'BN',	'Brunei Darussalam'),
(100,	'BGR',	'BG',	'Bulgaria'),
(104,	'MMR',	'MM',	'Myanmar'),
(108,	'BDI',	'BI',	'Burundi'),
(112,	'BLR',	'BY',	'Belarus'),
(116,	'KHM',	'KH',	'Cambodia'),
(120,	'CMR',	'CM',	'Cameroon'),
(124,	'CAN',	'CA',	'Canada'),
(132,	'CPV',	'CV',	'Cabo Verde'),
(136,	'CYM',	'KY',	'Cayman Islands'),
(140,	'CAF',	'CF',	'Central African Republic'),
(144,	'LKA',	'LK',	'Sri Lanka'),
(148,	'TCD',	'TD',	'Chad'),
(152,	'CHL',	'CL',	'Chile'),
(156,	'CHN',	'CN',	'China'),
(158,	'TWN',	'TW',	'Taiwan, Province of China'),
(162,	'CXR',	'CX',	'Christmas Island'),
(166,	'CCK',	'CC',	'Cocos (Keeling) Islands'),
(170,	'COL',	'CO',	'Colombia'),
(174,	'COM',	'KM',	'Comoros'),
(175,	'MYT',	'YT',	'Mayotte'),
(178,	'COG',	'CG',	'Congo'),
(180,	'COD',	'CD',	'Congo (Democratic Republic of the)'),
(184,	'COK',	'CK',	'Cook Islands'),
(188,	'CRI',	'CR',	'Costa Rica'),
(191,	'HRV',	'HR',	'Croatia'),
(192,	'CUB',	'CU',	'Cuba'),
(196,	'CYP',	'CY',	'Cyprus'),
(203,	'CZE',	'CZ',	'Czech Republic'),
(204,	'BEN',	'BJ',	'Benin'),
(208,	'DNK',	'DK',	'Denmark'),
(212,	'DMA',	'DM',	'Dominica'),
(214,	'DOM',	'DO',	'Dominican Republic'),
(218,	'ECU',	'EC',	'Ecuador'),
(222,	'SLV',	'SV',	'El Salvador'),
(226,	'GNQ',	'GQ',	'Equatorial Guinea'),
(231,	'ETH',	'ET',	'Ethiopia'),
(232,	'ERI',	'ER',	'Eritrea'),
(233,	'EST',	'EE',	'Estonia'),
(234,	'FRO',	'FO',	'Faroe Islands'),
(238,	'FLK',	'FK',	'Falkland Islands (Malvinas)'),
(239,	'SGS',	'GS',	'South Georgia and the South Sandwich Islands'),
(242,	'FJI',	'FJ',	'Fiji'),
(246,	'FIN',	'FI',	'Finland'),
(248,	'ALA',	'AX',	'Åland Islands'),
(250,	'FRA',	'FR',	'France'),
(254,	'GUF',	'GF',	'French Guiana'),
(258,	'PYF',	'PF',	'French Polynesia'),
(260,	'ATF',	'TF',	'French Southern Territories'),
(262,	'DJI',	'DJ',	'Djibouti'),
(266,	'GAB',	'GA',	'Gabon'),
(268,	'GEO',	'GE',	'Georgia'),
(270,	'GMB',	'GM',	'Gambia'),
(275,	'PSE',	'PS',	'Palestine, State of'),
(276,	'DEU',	'DE',	'Germany'),
(288,	'GHA',	'GH',	'Ghana'),
(292,	'GIB',	'GI',	'Gibraltar'),
(296,	'KIR',	'KI',	'Kiribati'),
(300,	'GRC',	'GR',	'Greece'),
(304,	'GRL',	'GL',	'Greenland'),
(308,	'GRD',	'GD',	'Grenada'),
(312,	'GLP',	'GP',	'Guadeloupe'),
(316,	'GUM',	'GU',	'Guam'),
(320,	'GTM',	'GT',	'Guatemala'),
(324,	'GIN',	'GN',	'Guinea'),
(328,	'GUY',	'GY',	'Guyana'),
(332,	'HTI',	'HT',	'Haiti'),
(334,	'HMD',	'HM',	'Heard Island and McDonald Islands'),
(336,	'VAT',	'VA',	'Holy See'),
(340,	'HND',	'HN',	'Honduras'),
(344,	'HKG',	'HK',	'Hong Kong'),
(348,	'HUN',	'HU',	'Hungary'),
(352,	'ISL',	'IS',	'Iceland'),
(356,	'IND',	'IN',	'India'),
(360,	'IDN',	'ID',	'Indonesia'),
(364,	'IRN',	'IR',	'Iran (Islamic Republic of)'),
(368,	'IRQ',	'IQ',	'Iraq'),
(372,	'IRL',	'IE',	'Ireland'),
(376,	'ISR',	'IL',	'Israel'),
(380,	'ITA',	'IT',	'Italy'),
(384,	'CIV',	'CI',	'Côte d\'Ivoire'),
(388,	'JAM',	'JM',	'Jamaica'),
(392,	'JPN',	'JP',	'Japan'),
(398,	'KAZ',	'KZ',	'Kazakhstan'),
(400,	'JOR',	'JO',	'Jordan'),
(404,	'KEN',	'KE',	'Kenya'),
(408,	'PRK',	'KP',	'Korea (Democratic People\'s Republic of)'),
(410,	'KOR',	'KR',	'Korea (Republic of)'),
(414,	'KWT',	'KW',	'Kuwait'),
(417,	'KGZ',	'KG',	'Kyrgyzstan'),
(418,	'LAO',	'LA',	'Lao People\'s Democratic Republic'),
(422,	'LBN',	'LB',	'Lebanon'),
(426,	'LSO',	'LS',	'Lesotho'),
(428,	'LVA',	'LV',	'Latvia'),
(430,	'LBR',	'LR',	'Liberia'),
(434,	'LBY',	'LY',	'Libya'),
(438,	'LIE',	'LI',	'Liechtenstein'),
(440,	'LTU',	'LT',	'Lithuania'),
(442,	'LUX',	'LU',	'Luxembourg'),
(446,	'MAC',	'MO',	'Macao'),
(450,	'MDG',	'MG',	'Madagascar'),
(454,	'MWI',	'MW',	'Malawi'),
(458,	'MYS',	'MY',	'Malaysia'),
(462,	'MDV',	'MV',	'Maldives'),
(466,	'MLI',	'ML',	'Mali'),
(470,	'MLT',	'MT',	'Malta'),
(474,	'MTQ',	'MQ',	'Martinique'),
(478,	'MRT',	'MR',	'Mauritania'),
(480,	'MUS',	'MU',	'Mauritius'),
(484,	'MEX',	'MX',	'Mexico'),
(492,	'MCO',	'MC',	'Monaco'),
(496,	'MNG',	'MN',	'Mongolia'),
(498,	'MDA',	'MD',	'Moldova (Republic of)'),
(499,	'MNE',	'ME',	'Montenegro'),
(500,	'MSR',	'MS',	'Montserrat'),
(504,	'MAR',	'MA',	'Morocco'),
(508,	'MOZ',	'MZ',	'Mozambique'),
(512,	'OMN',	'OM',	'Oman'),
(516,	'NAM',	'NA',	'Namibia'),
(520,	'NRU',	'NR',	'Nauru'),
(524,	'NPL',	'NP',	'Nepal'),
(528,	'NLD',	'NL',	'Netherlands'),
(531,	'CUW',	'CW',	'Curaçao'),
(533,	'ABW',	'AW',	'Aruba'),
(534,	'SXM',	'SX',	'Sint Maarten (Dutch part)'),
(535,	'BES',	'BQ',	'Bonaire, Sint Eustatius and Saba'),
(540,	'NCL',	'NC',	'New Caledonia'),
(548,	'VUT',	'VU',	'Vanuatu'),
(554,	'NZL',	'NZ',	'New Zealand'),
(558,	'NIC',	'NI',	'Nicaragua'),
(562,	'NER',	'NE',	'Niger'),
(566,	'NGA',	'NG',	'Nigeria'),
(570,	'NIU',	'NU',	'Niue'),
(574,	'NFK',	'NF',	'Norfolk Island'),
(578,	'NOR',	'NO',	'Norway'),
(580,	'MNP',	'MP',	'Northern Mariana Islands'),
(581,	'UMI',	'UM',	'United States Minor Outlying Islands'),
(583,	'FSM',	'FM',	'Micronesia (Federated States of)'),
(584,	'MHL',	'MH',	'Marshall Islands'),
(585,	'PLW',	'PW',	'Palau'),
(586,	'PAK',	'PK',	'Pakistan'),
(591,	'PAN',	'PA',	'Panama'),
(598,	'PNG',	'PG',	'Papua New Guinea'),
(600,	'PRY',	'PY',	'Paraguay'),
(604,	'PER',	'PE',	'Peru'),
(608,	'PHL',	'PH',	'Philippines'),
(612,	'PCN',	'PN',	'Pitcairn'),
(616,	'POL',	'PL',	'Poland'),
(620,	'PRT',	'PT',	'Portugal'),
(624,	'GNB',	'GW',	'Guinea-Bissau'),
(626,	'TLS',	'TL',	'Timor-Leste'),
(630,	'PRI',	'PR',	'Puerto Rico'),
(634,	'QAT',	'QA',	'Qatar'),
(638,	'REU',	'RE',	'Réunion'),
(642,	'ROU',	'RO',	'Romania'),
(643,	'RUS',	'RU',	'Russian Federation'),
(646,	'RWA',	'RW',	'Rwanda'),
(652,	'BLM',	'BL',	'Saint Barthélemy'),
(654,	'SHN',	'SH',	'Saint Helena, Ascension and Tristan da Cunha'),
(659,	'KNA',	'KN',	'Saint Kitts and Nevis'),
(660,	'AIA',	'AI',	'Anguilla'),
(662,	'LCA',	'LC',	'Saint Lucia'),
(663,	'MAF',	'MF',	'Saint Martin (French part)'),
(666,	'SPM',	'PM',	'Saint Pierre and Miquelon'),
(670,	'VCT',	'VC',	'Saint Vincent and the Grenadines'),
(674,	'SMR',	'SM',	'San Marino'),
(678,	'STP',	'ST',	'Sao Tome and Principe'),
(682,	'SAU',	'SA',	'Saudi Arabia'),
(686,	'SEN',	'SN',	'Senegal'),
(688,	'SRB',	'RS',	'Serbia'),
(690,	'SYC',	'SC',	'Seychelles'),
(694,	'SLE',	'SL',	'Sierra Leone'),
(702,	'SGP',	'SG',	'Singapore'),
(703,	'SVK',	'SK',	'Slovakia'),
(704,	'VNM',	'VN',	'Viet Nam'),
(705,	'SVN',	'SI',	'Slovenia'),
(706,	'SOM',	'SO',	'Somalia'),
(710,	'ZAF',	'ZA',	'South Africa'),
(716,	'ZWE',	'ZW',	'Zimbabwe'),
(724,	'ESP',	'ES',	'Spain'),
(728,	'SSD',	'SS',	'South Sudan'),
(729,	'SDN',	'SD',	'Sudan'),
(732,	'ESH',	'EH',	'Western Sahara'),
(740,	'SUR',	'SR',	'Suriname'),
(744,	'SJM',	'SJ',	'Svalbard and Jan Mayen'),
(748,	'SWZ',	'SZ',	'Swaziland'),
(752,	'SWE',	'SE',	'Sweden'),
(756,	'CHE',	'CH',	'Switzerland'),
(760,	'SYR',	'SY',	'Syrian Arab Republic'),
(762,	'TJK',	'TJ',	'Tajikistan'),
(764,	'THA',	'TH',	'Thailand'),
(768,	'TGO',	'TG',	'Togo'),
(772,	'TKL',	'TK',	'Tokelau'),
(776,	'TON',	'TO',	'Tonga'),
(780,	'TTO',	'TT',	'Trinidad and Tobago'),
(784,	'ARE',	'AE',	'United Arab Emirates'),
(788,	'TUN',	'TN',	'Tunisia'),
(792,	'TUR',	'TR',	'Turkey'),
(795,	'TKM',	'TM',	'Turkmenistan'),
(796,	'TCA',	'TC',	'Turks and Caicos Islands'),
(798,	'TUV',	'TV',	'Tuvalu'),
(800,	'UGA',	'UG',	'Uganda'),
(804,	'UKR',	'UA',	'Ukraine'),
(807,	'MKD',	'MK',	'Macedonia (the former Yugoslav Republic of)'),
(818,	'EGY',	'EG',	'Egypt'),
(826,	'GBR',	'GB',	'United Kingdom of Great Britain and Northern Ireland'),
(831,	'GGY',	'GG',	'Guernsey'),
(832,	'JEY',	'JE',	'Jersey'),
(833,	'IMN',	'IM',	'Isle of Man'),
(834,	'TZA',	'TZ',	'Tanzania, United Republic of'),
(840,	'USA',	'US',	'United States of America'),
(850,	'VIR',	'VI',	'Virgin Islands (U.S.)'),
(854,	'BFA',	'BF',	'Burkina Faso'),
(858,	'URY',	'UY',	'Uruguay'),
(860,	'UZB',	'UZ',	'Uzbekistan'),
(862,	'VEN',	'VE',	'Venezuela (Bolivarian Republic of)'),
(876,	'WLF',	'WF',	'Wallis and Futuna'),
(882,	'WSM',	'WS',	'Samoa'),
(887,	'YEM',	'YE',	'Yemen'),
(894,	'ZMB',	'ZM',	'Zambia');

-- 2015-02-22 15:26:30
