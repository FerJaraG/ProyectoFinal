# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Country.create(name: "Chile")

# region = Region.create([
# {id: '1', country_id: 1 ,name: 'Región de Los Ríos'},
# {id: '2', country_id: 1 ,name: 'Región Metropolitana'},
# {id: '3', country_id: 1, name: 'Región de Magallanes y la Antártica Chilena'},
# {id: '4', country_id: 1,name: 'Región de Aysén del General Carlos Ibáñez del Campo'},
# {id: '5', country_id: 1 ,name: 'Región de Los Lagos'},
# {id: '6', country_id: 1 ,name: 'Región de la Araucanía'},
# {id: '7', country_id: 1 ,name: 'Región del Bío-Bío'},
# {id: '8', country_id: 1 ,name: 'Región del Maule'},
# {id: '9', country_id: 1 ,name: 'Región del Libertador General Bernardo OHiggins'},
# {id: '10', country_id: 1 ,name: 'Región de Valparaiso'},
# {id: '11', country_id: 1 ,name: 'Región de Coquimbo'},
# {id: '12', country_id: 1,name: 'Región de Atacama'},
# {id: '13', country_id: 1,name: 'Región de Antofagasta'},
# {id: '14', country_id: 1 ,name: 'Región de Tarapacá'},
# {id: '15', country_id: 1 ,name: 'Región de Arica y Parinacota'}
# ])

# city = City.create!([
# {id:1,name:'Arica',region_id:1},
# {id:2,name:'Parinacota',region_id:1},
# {id:3,name:'Iquique',region_id:2},
# {id:4,name:'El Tamarugal',region_id:2},
# {id:5,name:'Antofagasta',region_id:3},
# {id:6,name:'El Loa',region_id:3},
# {id:7,name:'Tocopilla',region_id:3},
# {id:8,name:'Chañaral',region_id:4},
# {id:9,name:'Copiapó',region_id:4},
# {id:10,name:'Huasco',region_id: 4},
# {id:11,name:'Choapa',region_id: 5},
# {id:12,name:'Elqui',region_id: 5},
# {id:13,name:'Limarí',region_id: 5},
# {id:14,name:'Isla de Pascua',region_id:6},
# {id:15,name:'Los Andes',region_id:6},
# {id:16,name:'Petorca',region_id:6},
# {id:17,name:'Quillota',region_id:6},
# {id:18,name:'San Antonio',region_id:6},
# {id:19,name:'San Felipe de Aconcagua',region_id:6},
# {id:20,name:'Valparaiso',region_id:6},
# {id:21,name:'Chacabuco',region_id:7},
# {id:22,name:'Cordillera',region_id:7},
# {id:23,name:'Maipo',region_id:2},
# {id:24,name:'Melipilla',region_id:2},
# {id:25,name:'Santiago',region_id:2},
# {id:26,name:'Talagante',region_id:7},
# {id:27,name:'Cachapoal',region_id:8},
# {id:28,name:'Cardenal Caro',region_id:8},
# {id:29,name:'Colchagua',region_id:8},
# {id:30,name:'Cauquenes',region_id:9},
# {id:31,name:'Curicó',region_id:9},
# {id:32,name:'Linares',region_id:9},
# {id:33,name:'Talca',region_id:9},
# {id:34,name:'Arauco',region_id:10},
# {id:35,name:'Bio Bío',region_id:10},
# {id:36,name:'Concepción',region_id:10},
# {id:37,name:'Ñuble',region_id:10},
# {id:38,name:'Cautín',region_id:11},
# {id:39,name:'Malleco',region_id:11},
# {id:40,name:'Valdivia',region_id:12},
# {id:41,name:'Ranco',region_id:12},
# {id:42,name:'Chiloé',region_id:13},
# {id:43,name:'Llanquihue',region_id:13},
# {id:44,name:'Osorno',region_id:13},
# {id:45,name:'Palena',region_id:13},
# {id:46,name:'Aisén',region_id:14},
# {id:47,name:'Capitán Prat',region_id:14},
# {id:48,name:'Coihaique',region_id:14},
# {id:49,name:'General Carrera',region_id:14},
# {id:50,name:'Antártica Chilena',region_id:15},
# {id:51,name:'Magallanes',region_id:15},
# {id:52,name:'Tierra del Fuego',region_id:15},
# {id:53,name:'Última Esperanza',region_id:15}
# ])
# commune = Commune.create!([
# {id:1,name:'Arica',city_id:1},
# {id:2,name:'Camarones',city_id:1},
# {id:3,name:'General Lagos',city_id:2},
# {id:4,name:'Putre',city_id:2},
# {id:5,name:'Alto Hospicio',city_id:3},
# {id:6,name:'Iquique',city_id:3},
# {id:7,name:'Camiña',city_id:4},
# {id:8,name:'Colchane',city_id:4},
# {id:9,name:'Huara',city_id:4},
# {id:10,name:'Pica',city_id:4},
# {id:11,name:'Pozo Almonte',city_id:4},
# {id:12,name:'Antofagasta',city_id:5},
# {id:13,name:'Mejillones',city_id:5},
# {id:14,name:'Sierra Gorda',city_id:5},
# {id:15,name:'Taltal',city_id:5},
# {id:16,name:'Calama',city_id:6},
# {id:17,name:'Ollague',city_id:6},
# {id:18,name:'San Pedro de Atacama',city_id:6},
# {id:19,name:'María Elena',city_id:7},
# {id:20,name:'Tocopilla',city_id:7},
# {id:21,name:'Chañaral',city_id:8},
# {id:22,name:'Diego de Almagro',city_id:8},
# {id:23,name:'Caldera',city_id:9},
# {id:24,name:'Copiapó',city_id:9},
# {id:25,name:'Tierra Amarilla',city_id:9},
# {id:26,name:'Alto del Carmen',city_id:10},
# {id:27,name:'Freirina',city_id:10},
# {id:28,name:'Huasco',city_id:10},
# {id:29,name:'Vallenar',city_id:10},
# {id:30,name:'Canela',city_id:11},
# {id:31,name:'Illapel',city_id:11},
# {id:32,name:'Los Vilos',city_id:11},
# {id:33,name:'Salamanca',city_id:11},
# {id:34,name:'Andacollo',city_id:12},
# {id:35,name:'Coquimbo',city_id:12},
# {id:36,name:'La Higuera',city_id:12},
# {id:37,name:'La Serena',city_id:12},
# {id:38,name:'Paihuaco',city_id:12},
# {id:39,name:'Vicuña',city_id:12},
# {id:40,name:'Combarbalá',city_id:13},
# {id:41,name:'Monte Patria',city_id:13},
# {id:42,name:'Ovalle',city_id:13},
# {id:43,name:'Punitaqui',city_id:13},
# {id:44,name:'Río Hurtado',city_id:13},
# {id:45,name:'Isla de Pascua',city_id:14},
# {id:46,name:'Calle Larga',city_id:15},
# {id:47,name:'Los Andes',city_id:15},
# {id:48,name:'Rinconada',city_id:15},
# {id:49,name:'San Esteban',city_id:15},
# {id:50,name:'La Ligua',city_id:16},
# {id:51,name:'Papudo',city_id:16},
# {id:52,name:'Petorca',city_id:16},
# {id:53,name:'Zapallar',city_id:16},
# {id:54,name:'Hijuelas',city_id:17},
# {id:55,name:'La Calera',city_id:17},
# {id:56,name:'La Cruz',city_id:17},
# {id:57,name:'Limache',city_id:17},
# {id:58,name:'Nogales',city_id:17},
# {id:59,name:'Olmué',city_id:17},
# {id:60,name:'Quillota',city_id:17},
# {id:61,name:'Algarrobo',city_id:18},
# {id:62,name:'Cartagena',city_id:18},
# {id:63,name:'El Quisco',city_id:18},
# {id:64,name:'El Tabo',city_id:18},
# {id:65,name:'San Antonio',city_id:18},
# {id:66,name:'Santo Domingo',city_id:18},
# {id:67,name:'Catemu',city_id:19},
# {id:68,name:'Llaillay',city_id:19},
# {id:69,name:'Panquehue',city_id:19},
# {id:70,name:'Putaendo',city_id:19},
# {id:71,name:'San Felipe',city_id:19},
# {id:72,name:'Santa María',city_id:19},
# {id:73,name:'Casablanca',city_id:20},
# {id:74,name:'Concón',city_id:20},
# {id:75,name:'Juan Fernández',city_id:20},
# {id:76,name:'Puchuncaví',city_id:20},
# {id:77,name:'Quilpué',city_id:20},
# {id:78,name:'Quintero',city_id:20},
# {id:79,name:'Valparaíso',city_id:20},
# {id:80,name:'Villa Alemana',city_id:20},
# {id:81,name:'Viña del Mar',city_id:20},
# {id:82,name:'Colina',city_id:21},
# {id:83,name:'Lampa',city_id:21},
# {id:84,name:'Tiltil',city_id:21},
# {id:85,name:'Pirque',city_id:22},
# {id:86,name:'Puente Alto',city_id:22},
# {id:87,name:'San José de Maipo',city_id:22},
# {id:88,name:'Buin',city_id:23},
# {id:89,name:'Calera de Tango',city_id:23},
# {id:90,name:'Paine',city_id:23},
# {id:91,name:'San Bernardo',city_id:23},
# {id:92,name:'Alhué',city_id:24},
# {id:93,name:'Curacaví',city_id:24},
# {id:94,name:'María Pinto',city_id:24},
# {id:95,name:'Melipilla',city_id:24},
# {id:96,name:'San Pedro',city_id:24},
# {id:97,name:'Cerrillos',city_id:25},
# {id:98,name:'Cerro Navia',city_id:25},
# {id:99,name:'Conchalí',city_id:25},
# {id:100,name:'El Bosque',city_id:25},
# {id:101,name:'Estación Central',city_id:25},
# {id:102,name:'Huechuraba',city_id:25},
# {id:103,name:'Independencia',city_id:25},
# {id:104,name:'La Cisterna',city_id:25},
# {id:105,name:'La Granja',city_id:25},
# {id:106,name:'La Florida',city_id:25},
# {id:107,name:'La Pintana',city_id:25},
# {id:108,name:'La Reina',city_id:25},
# {id:109,name:'Las Condes',city_id:25},
# {id:110,name:'Lo Barnechea',city_id:25},
# {id:111,name:'Lo Espejo',city_id:25},
# {id:112,name:'Lo Prado',city_id:25},
# {id:113,name:'Macul',city_id:25},
# {id:114,name:'Maipú',city_id:25},
# {id:115,name:'Ñuñoa',city_id:25},
# {id:116,name:'Pedro Aguirre Cerda',city_id:25},
# {id:117,name:'Peñalolén',city_id:25},
# {id:118,name:'Providencia',city_id:25},
# {id:119,name:'Pudahuel',city_id:25},
# {id:120,name:'Quilicura',city_id:25},
# {id:121,name:'Quinta Normal',city_id:25},
# {id:122,name:'Recoleta',city_id:25},
# {id:123,name:'Renca',city_id:25},
# {id:124,name:'San Miguel',city_id:25},
# {id:125,name:'San Joaquín',city_id:25},
# {id:126,name:'San Ramón',city_id:25},
# {id:127,name:'Santiago',city_id:25},
# {id:128,name:'Vitacura',city_id:25},
# {id:129,name:'El Monte',city_id:26},
# {id:130,name:'Isla de Maipo',city_id:26},
# {id:131,name:'Padre Hurtado',city_id:26},
# {id:132,name:'Peñaflor',city_id:26},
# {id:133,name:'Talagante',city_id:26},
# {id:134,name:'Codegua',city_id:27},
# {id:135,name:'Coínco',city_id:27},
# {id:136,name:'Coltauco',city_id:27},
# {id:137,name:'Doñihue',city_id:27},
# {id:138,name:'Graneros',city_id:27},
# {id:139,name:'Las Cabras',city_id:27},
# {id:140,name:'Machalí',city_id:27},
# {id:141,name:'Malloa',city_id:27},
# {id:142,name:'Mostazal',city_id:27},
# {id:143,name:'Olivar',city_id:27},
# {id:144,name:'Peumo',city_id:27},
# {id:145,name:'Pichidegua',city_id:27},
# {id:146,name:'Quinta de Tilcoco',city_id:27},
# {id:147,name:'Rancagua',city_id:27},
# {id:148,name:'Rengo',city_id:27},
# {id:149,name:'Requínoa',city_id:27},
# {id:150,name:'San Vicente de Tagua Tagua',city_id:27},
# {id:151,name:'La Estrella',city_id:28},
# {id:152,name:'Litueche',city_id:28},
# {id:153,name:'Marchihue',city_id:28},
# {id:154,name:'Navidad',city_id:28},
# {id:155,name:'Peredones',city_id:28},
# {id:156,name:'Pichilemu',city_id:28},
# {id:157,name:'Chépica',city_id:29},
# {id:158,name:'Chimbarongo',city_id:29},
# {id:159,name:'Lolol',city_id:29},
# {id:160,name:'Nancagua',city_id:29},
# {id:161,name:'Palmilla',city_id:29},
# {id:162,name:'Peralillo',city_id:29},
# {id:163,name:'Placilla',city_id:29},
# {id:164,name:'Pumanque',city_id:29},
# {id:165,name:'San Fernando',city_id:29},
# {id:166,name:'Santa Cruz',city_id:29},
# {id:167,name:'Cauquenes',city_id:30},
# {id:168,name:'Chanco',city_id:30},
# {id:169,name:'Pelluhue',city_id:30},
# {id:170,name:'Curicó',city_id:31},
# {id:171,name:'Hualañé',city_id:31},
# {id:172,name:'Licantén',city_id:31},
# {id:173,name:'Molina',city_id:31},
# {id:174,name:'Rauco',city_id:31},
# {id:175,name:'Romeral',city_id:31},
# {id:176,name:'Sagrada Familia',city_id:31},
# {id:177,name:'Teno',city_id:31},
# {id:178,name:'Vichuquén',city_id:31},
# {id:179,name:'Colbún',city_id:32},
# {id:180,name:'Linares',city_id:32},
# {id:181,name:'Longaví',city_id:32},
# {id:182,name:'Parral',city_id:32},
# {id:183,name:'Retiro',city_id:32},
# {id:184,name:'San Javier',city_id:32},
# {id:185,name:'Villa Alegre',city_id:32},
# {id:186,name:'Yerbas Buenas',city_id:32},
# {id:187,name:'Constitución',city_id:33},
# {id:188,name:'Curepto',city_id:33},
# {id:189,name:'Empedrado',city_id:33},
# {id:190,name:'Maule',city_id:33},
# {id:191,name:'Pelarco',city_id:33},
# {id:192,name:'Pencahue',city_id:33},
# {id:193,name:'Río Claro',city_id:33},
# {id:194,name:'San Clemente',city_id:33},
# {id:195,name:'San Rafael',city_id:33},
# {id:196,name:'Talca',city_id:33},
# {id:197,name:'Arauco',city_id:34},
# {id:198,name:'Cañete',city_id:34},
# {id:199,name:'Contulmo',city_id:34},
# {id:200,name:'Curanilahue',city_id:34},
# {id:201,name:'Lebu',city_id:34},
# {id:202,name:'Los Álamos',city_id:34},
# {id:203,name:'Tirúa',city_id:34},
# {id:204,name:'Alto Biobío',city_id:35},
# {id:205,name:'Antuco',city_id:35},
# {id:206,name:'Cabrero',city_id:35},
# {id:207,name:'Laja',city_id:35},
# {id:208,name:'Los Ángeles',city_id:35},
# {id:209,name:'Mulchén',city_id:35},
# {id:210,name:'Nacimiento',city_id:35},
# {id:211,name:'Negrete',city_id:35},
# {id:212,name:'Quilaco',city_id:35},
# {id:213,name:'Quilleco',city_id:35},
# {id:214,name:'San Rosendo',city_id:35},
# {id:215,name:'Santa Bárbara',city_id:35},
# {id:216,name:'Tucapel',city_id:35},
# {id:217,name:'Yumbel',city_id:35},
# {id:218,name:'Chiguayante',city_id:36},
# {id:219,name:'Concepción',city_id:36},
# {id:220,name:'Coronel',city_id:36},
# {id:221,name:'Florida',city_id:36},
# {id:222,name:'Hualpén',city_id:36},
# {id:223,name:'Hualqui',city_id:36},
# {id:224,name:'Lota',city_id:36},
# {id:225,name:'Penco',city_id:36},
# {id:226,name:'San Pedro de La Paz',city_id:36},
# {id:227,name:'Santa Juana',city_id:36},
# {id:228,name:'Talcahuano',city_id:36},
# {id:229,name:'Tomé',city_id:36},
# {id:230,name:'Bulnes',city_id:37},
# {id:231,name:'Chillán',city_id:37},
# {id:232,name:'Chillán Viejo',city_id:37},
# {id:233,name:'Cobquecura',city_id:37},
# {id:234,name:'Coelemu',city_id:37},
# {id:235,name:'Coihueco',city_id:37},
# {id:236,name:'El Carmen',city_id:37},
# {id:237,name:'Ninhue',city_id:37},
# {id:238,name:'Ñiquen',city_id:37},
# {id:239,name:'Pemuco',city_id:37},
# {id:240,name:'Pinto',city_id:37},
# {id:241,name:'Portezuelo',city_id:37},
# {id:242,name:'Quillón',city_id:37},
# {id:243,name:'Quirihue',city_id:37},
# {id:244,name:'Ránquil',city_id:37},
# {id:245,name:'San Carlos',city_id:37},
# {id:246,name:'San Fabián',city_id:37},
# {id:247,name:'San Ignacio',city_id:37},
# {id:248,name:'San Nicolás',city_id:37},
# {id:249,name:'Treguaco',city_id:37},
# {id:250,name:'Yungay',city_id:37},
# {id:251,name:'Carahue',city_id:38},
# {id:252,name:'Cholchol',city_id:38},
# {id:253,name:'Cunco',city_id:38},
# {id:254,name:'Curarrehue',city_id:38},
# {id:255,name:'Freire',city_id:38},
# {id:256,name:'Galvarino',city_id:38},
# {id:257,name:'Gorbea',city_id:38},
# {id:258,name:'Lautaro',city_id:38},
# {id:259,name:'Loncoche',city_id:38},
# {id:260,name:'Melipeuco',city_id:38},
# {id:261,name:'Nueva Imperial',city_id:38},
# {id:262,name:'Padre Las Casas',city_id:38},
# {id:263,name:'Perquenco',city_id:38},
# {id:264,name:'Pitrufquén',city_id:38},
# {id:265,name:'Pucón',city_id:38},
# {id:266,name:'Saavedra',city_id:38},
# {id:267,name:'Temuco',city_id:38},
# {id:268,name:'Teodoro Schmidt',city_id:38},
# {id:269,name:'Toltén',city_id:38},
# {id:270,name:'Vilcún',city_id:38},
# {id:271,name:'Villarrica',city_id:38},
# {id:272,name:'Angol',city_id:39},
# {id:273,name:'Collipulli',city_id:39},
# {id:274,name:'Curacautín',city_id:39},
# {id:275,name:'Ercilla',city_id:39},
# {id:276,name:'Lonquimay',city_id:39},
# {id:277,name:'Los Sauces',city_id:39},
# {id:278,name:'Lumaco',city_id:39},
# {id:279,name:'Purén',city_id:39},
# {id:280,name:'Renaico',city_id:39},
# {id:281,name:'Traiguén',city_id:39},
# {id:282,name:'Victoria',city_id:39},
# {id:283,name:'Corral',city_id:40},
# {id:284,name:'Lanco',city_id:40},
# {id:285,name:'Los Lagos',city_id:40},
# {id:286,name:'Máfil',city_id:40},
# {id:287,name:'Mariquina',city_id:40},
# {id:288,name:'Paillaco',city_id:40},
# {id:289,name:'Panguipulli',city_id:40},
# {id:290,name:'Valdivia',city_id:40},
# {id:291,name:'Futrono',city_id:41},
# {id:292,name:'La Unión',city_id:41},
# {id:293,name:'Lago Ranco',city_id:41},
# {id:294,name:'Río Bueno',city_id:41},
# {id:295,name:'Ancud',city_id:42},
# {id:296,name:'Castro',city_id:42},
# {id:297,name:'Chonchi',city_id:42},
# {id:298,name:'Curaco de Vélez',city_id:42},
# {id:299,name:'Dalcahue',city_id:42},
# {id:300,name:'Puqueldón',city_id:42},
# {id:301,name:'Queilén',city_id:42},
# {id:302,name:'Quemchi',city_id:42},
# {id:303,name:'Quellón',city_id:42},
# {id:304,name:'Quinchao',city_id:42},
# {id:305,name:'Calbuco',city_id:43},
# {id:306,name:'Cochamó',city_id:43},
# {id:307,name:'Fresia',city_id:43},
# {id:308,name:'Frutillar',city_id:43},
# {id:309,name:'Llanquihue',city_id:43},
# {id:310,name:'Los Muermos',city_id:43},
# {id:311,name:'Maullín',city_id:43},
# {id:312,name:'Puerto Montt',city_id:43},
# {id:313,name:'Puerto Varas',city_id:43},
# {id:314,name:'Osorno',city_id:44},
# {id:315,name:'Puero Octay',city_id:44},
# {id:316,name:'Purranque',city_id:44},
# {id:317,name:'Puyehue',city_id:44},
# {id:318,name:'Río Negro',city_id:44},
# {id:319,name:'San Juan de la Costa',city_id:44},
# {id:320,name:'San Pablo',city_id:44},
# {id:321,name:'Chaitén',city_id:45},
# {id:322,name:'Futaleufú',city_id:45},
# {id:323,name:'Hualaihué',city_id:45},
# {id:324,name:'Palena',city_id:45},
# {id:325,name:'Aysén',city_id:46},
# {id:326,name:'Cisnes',city_id:46},
# {id:327,name:'Guaitecas',city_id:46},
# {id:328,name:'Cochrane',city_id:47},
# {id:329,name:'O\'higgins',city_id:47},
# {id:330,name:'Tortel',city_id:47},
# {id:331,name:'Coihaique',city_id:48},
# {id:332,name:'Lago Verde',city_id:48},
# {id:333,name:'Chile Chico',city_id:49},
# {id:334,name:'Río Ibáñez',city_id:49},
# {id:335,name:'Antártica',city_id:50},
# {id:336,name:'Cabo de Hornos',city_id:50},
# {id:337,name:'Laguna Blanca',city_id:51},
# {id:338,name:'Punta Arenas',city_id:51},
# {id:339,name:'Río Verde',city_id:51},
# {id:340,name:'San Gregorio',city_id:51},
# {id:341,name:'Porvenir',city_id:52},
# {id:342,name:'Primavera',city_id:52},
# {id:343,name:'Timaukel',city_id:52},
# {id:344,name:'Natales',city_id:53},
# {id:345,name:'Torres del Paine',city_id:53}
# ])

# Genre.create(name: 'Femenino')
# Genre.create(name: 'Masculino')
# Genre.create(name: 'Indefinido')
# Genre.create(name: 'Prefiere no decir')

# Service.create(name: 'Baño')
# Service.create(name: 'Ducha')
# Service.create(name: 'Lavadora')
# Service.create(name: 'Piscina')
# Service.create(name: 'Lavaderos')
# Service.create(name: 'Juegos Infantiles')
# Service.create(name: 'Telefono')
# Service.create(name: 'Internet')
# Service.create(name: 'Quincho')
# Service.create(name: 'Arriendo Bicicletas')
# Service.create(name: 'Se Permiten Mascotas')
# Service.create(name: 'Cancha de Futbol')
# Service.create(name: 'Cancha de Voley')
# Service.create(name: 'Arriendo de Caballos')
# Service.create(name: 'Mesas Picnic')
# Service.create(name: 'Almacen Interior')
# Service.create(name: 'Arriendo de Kayac')

# Season.create(name: 'Alta', start_date: '2018-10-31', end_date: '2019-03-31')
# Season.create(name: 'Baja', start_date: '2018-04-01', end_date: '2018-10-30')

# Currency.create(iso: 'CLP', name: 'Peso Chileno')
# Currency.create(iso: 'USD', name: 'Dolar Americano')

# Paymentmethod.create(name: 'Tarjeta de Credito')
# Paymentmethod.create(name: 'Efectivo')
# Paymentmethod.create(name: 'Paypal')

# User.create(id: 2, email: 'person1@gmail.com', password: '123456', user_type: 'person')
# User.create(id: 3, email: 'person2@gmail.com', password: '123456', user_type: 'person')
# User.create(id: 4, email: 'person3@gmail.com', password: '123456', user_type: 'person')
# User.create(id: 5, email: 'person4@gmail.com', password: '123456', user_type: 'person')
# User.create(id: 6, email: 'person5@gmail.com', password: '123456', user_type: 'person')
# User.create(id: 7, email: 'camping1@gmail.com', password: '123456', user_type: 'camping')
# User.create(id: 8, email: 'camping2@gmail.com', password: '123456', user_type: 'camping')
# User.create(id: 9, email: 'camping3@gmail.com', password: '123456', user_type: 'camping')
# User.create(id: 10, email: 'camping4@gmail.com', password: '123456', user_type: 'camping')
# User.create(id: 11, email: 'camping5@gmail.com', password: '123456', user_type: 'camping')

# Camping.create(id:1, name: 'Camping El Canto de Chucao', description: 'Camping ubicado en una increíble playa del Lago Ranco, en la península de Illahuapi. Con excelente instalaciones y entorno para un descanso familiar, disfrutando del turismo étnico y aguas cálidas. El Canto del Chucao, cuenta con un camping con seis sitios (cinco a orilla del lago), cancha de fútbol y de voley, barco para travesías, animales, senderos, entre otros atractivos.', user_id: 7, camping_type: 'camping', commune_id: 293, address:'illahuapi, Lago Ranco, Región de los Ríos', latitude: -40.262333, longitude: -72.311899, info: 'No tenemos baños para discapacitados, cada sitio tiene fogón, en caso de necesitar parrilla deben solicitarla, tenemos cobertura de celular.', phone: '+56998694127', email: 'vivi1221.lorena@gmail.com', tourism: 'Tenemos río cerca del camping, muchos arboles, estamos emplazados a orillas del Lago Ranco, contamos con un muelle para lanchas, canchas de futbol y Voley, juegos para niños, trekking, paseos en lancha.')
# Camping.create(id:2, name: 'Camping Ecoturismo La Pancha', description: 'En el Sur de la Patagonia chilena, a siete kilómetros de Puerto Aysén, encontramos Ecoturismo la Pancha, un lugar al pie del cañón nevado, del cual nacen varias vertientes que llenan el Río los Palos que bordea el lugar. Éste es un espacio ideal para quienes buscan tranquilidad y una conexión intima con la Patagonia Chilena.', user_id: 8, camping_type: 'camping', commune_id: 325, address:'X-528, Aysén, XI Región', latitude: -45.351599, longitude: -72.706113, info: 'Contamos con un espacio amplio rodeado de un arroyo y el río los Palos, habilitados con 10 sitios de camping en una pampa siempre verde. Al ingreso, todo huésped debe registrarse en el Libro o cuadernillo de Registro de Pasajeros. Estacionar su vehículo frente a cada sitio, en los lugares designados (el ingreso de un segundo vehículo debe ser coordinado con Recepción). Dentro de las medidas de sustentabilidad Camping Ecoturismo La Pancha solicita a sus huéspedes reciclar sus residuos en los contenedores correspondientes. Además, se agradece un buen uso de la energía y agua. Horario del servicio de aseo: a partir de las 09:30 a 12:00 hrs. (si el sitio de camping no está desocupado, el aseo se realizará desde las 15:00 hrs. en adelante). La zona Wifi se encuentra en el sector de recepción.', phone: '+56944031514', email: 'quincholapancha@gmail.com', tourism: 'Todas estas instalaciones se complementan al servicio de kayak y cabalgatas, que hacen de Ecoturismo la Pancha un lugar ideal para pasar unos días en medio de la patagonia.', web: ' www.ecoturismolapancha.cl', facebook: 'https://www.facebook.com/CampingLaPancha'   )
# Camping.create(id:3, name: 'Camping Los Copihues de Casablanca', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 9, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:4, name: 'Camping Los Copihues de Casablanca 2', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 10, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:5, name: 'Camping Los Copihues de Casablanca 3', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 6, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:6, name: 'Camping Los Copihues de Casablanca 4', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 7, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:7, name: 'Camping Los Copihues de Casablanca 5', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 8, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:8, name: 'Camping Los Copihues de Casablanca 6', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 7, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:9, name: 'Camping Los Copihues de Casablanca 7', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 6, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:10, name: 'Camping Los Copihues de Casablanca 8', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 9, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )
# Camping.create(id:11, name: 'Camping Los Copihues de Casablanca 9', description: 'Camping Los Copihues de Casablanca se encuentra ubicado a 21 Km Ruta Valdivia-Paillaco. Cuenta con sitios techados, baño pùblico, estero. Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión. Lugar rodeado de naturaleza, estero especial para los niños, juegos, espacios para caminar, trotar, quincho, sitios con mesones, bancas, etc.', user_id: 7, camping_type: 'camping', commune_id: 288, address:'Camino, Paillaco, Valdivia, Región de los Ríos', latitude: -39.953367, longitude: -73.096580, info: 'Espacio familiar entre estrero y bosque endémico de la Selva Valdiviana. Quincho para reuniones familiares o grupales. Cancha de fútbol, cancha de Tejo, juegos infantiles, baños entre otros servicios.', phone: '+56985973010', email: 'mario-fierro@hotmail.com', tourism: 'Se encuentra rodeado por amplia variedad de flora y tiene espacio suficiente que permite relajaciòn y diversión.', web: '', facebook: 'https://www.facebook.com/campingloscopihuesdecasablanca/'   )

# 20.times do |i|
#     Camping.create(
    # name: Faker::StarWars.planet,
    # description: Faker::StarWars.quote,
    #   user_id:,
    #   camping_type:,
    #   commune_id:,
    #   address:,
    #   latitude:,
    #   longitude:,
    #   info:,
    #   images:,
    #   phone:,
    #   email:,
    #   tourism:,
    #   web:,
    #   facebook:
    #   )
          
#    end

# 50.times do |i|
#     Campsite.create(
#         identifier: "Sitio_#{i}", 
#         description: "Sitio para #{i} personas", 
#         camping: Camping.order("RANDOM()").first ,
#         status: false)
# end

# Plan.create(season_id:1 , person_type:'adult', camping_id:2 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:2 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:2 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:2 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:3 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:3 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:3 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:3 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:4 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:4 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:4 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:4 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:5 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:5 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:5 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:5 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:6 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:6 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:6 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:6 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:7 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:7 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:7 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:7 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:8 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:8 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:8 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:8 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:9 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:9 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:9 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:9 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:10 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:10 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:10 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:10 , price: 1000)

# Plan.create(season_id:1 , person_type:'adult', camping_id:11 , price: 4000)
# Plan.create(season_id:1 , person_type:'child', camping_id:11 , price: 2000)
# Plan.create(season_id:2 , person_type:'adult', camping_id:11 , price: 2000)
# Plan.create(season_id:2 , person_type:'child', camping_id:11 , price: 1000)

# Booking.create(check_in: '2018-04-07' , check_out: '2018-04-12', price_per_day: , total_price: , booking_date: , adults_quantity: , kids_quantity: , observations: , status: , camping_id: , user_id: , campsite_id: , created_at: , updated_at: , billing_id: ) 