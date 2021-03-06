# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create!(name: "Chile")

region = Region.create!([
{country_id: 1 ,name: 'Region de Arica y Parinacota'},
{country_id: 1 ,name: 'Region Metropolitana'},
{country_id: 1,name: 'Region de Antofagasta'},
{country_id: 1,name: 'Region de Atacama'},
{country_id: 1 ,name: 'Region de Coquimbo'},
{country_id: 1 ,name: 'Region de Valparaiso'},
{country_id: 1 ,name: 'Region de Tarapacá'},
{country_id: 1 ,name: 'Region del Maule'},
{country_id: 1 ,name: 'Region del Libertador General Bernardo OHiggins'},
{country_id: 1 ,name: 'Region del Bío-Bío'},
{country_id: 1 ,name: 'Region de la Araucanía'},
{country_id: 1 ,name: 'Region de Los Ríos'},
{country_id: 1 ,name: 'Region de Los Lagos'},
{country_id: 1,name: 'Region de Aysén del General Carlos Ibáñez del Campo'},
{country_id: 1, name: 'Region de Magallanes y la Antártica Chilena'},
])

city = City.create!([
{name:'Arica',region_id:1},
{name:'Parinacota',region_id:1},
{name:'Iquique',region_id:7},
{name:'El Tamarugal',region_id:7},
{name:'Antofagasta',region_id:3},
{name:'El Loa',region_id:3},
{name:'Tocopilla',region_id:3},
{name:'Chañaral',region_id:4},
{name:'Copiapó',region_id:4},
{name:'Huasco',region_id: 4},
{name:'Choapa',region_id: 5},
{name:'Elqui',region_id: 5},
{name:'Limarí',region_id: 5},
{name:'Isla de Pascua',region_id:6},
{name:'Los Andes',region_id:6},
{name:'Petorca',region_id:6},
{name:'Quillota',region_id:6},
{name:'San Antonio',region_id:6},
{name:'San Felipe de Aconcagua',region_id:6},
{name:'Valparaiso',region_id:6},
{name:'Chacabuco',region_id:2},
{name:'Cordillera',region_id:2},
{name:'Maipo',region_id:2},
{name:'Melipilla',region_id:2},
{name:'Santiago',region_id:2},
{name:'Talagante',region_id:2},
{name:'Cachapoal',region_id:9},
{name:'Cardenal Caro',region_id:9},
{name:'Colchagua',region_id:9},
{name:'Cauquenes',region_id:9},
{name:'Curicó',region_id:9},
{name:'Linares',region_id:9},
{name:'Talca',region_id:9},
{name:'Arauco',region_id:10},
{name:'Bio Bío',region_id:10},
{name:'Concepción',region_id:10},
{name:'Ñuble',region_id:10},
{name:'Cautín',region_id:11},
{name:'Malleco',region_id:11},
{name:'Valdivia',region_id:12},
{name:'Ranco',region_id:12},
{name:'Chiloé',region_id:13},
{name:'Llanquihue',region_id:13},
{name:'Osorno',region_id:13},
{name:'Palena',region_id:13},
{name:'Aysén',region_id:14},
{name:'Capitán Prat',region_id:14},
{name:'Coihaique',region_id:14},
{name:'General Carrera',region_id:14},
{name:'Antártica Chilena',region_id:15},
{name:'Magallanes',region_id:15},
{name:'Tierra del Fuego',region_id:15},
{name:'Última Esperanza',region_id:15}
])
commune = Commune.create!([
{name:'Arica',city_id:1},
{name:'Camarones',city_id:1},
{name:'General Lagos',city_id:2},
{name:'Putre',city_id:2},
{name:'Alto Hospicio',city_id:3},
{name:'Iquique',city_id:3},
{name:'Camiña',city_id:4},
{name:'Colchane',city_id:4},
{name:'Huara',city_id:4},
{name:'Pica',city_id:4},
{name:'Pozo Almonte',city_id:4},
{name:'Antofagasta',city_id:5},
{name:'Mejillones',city_id:5},
{name:'Sierra Gorda',city_id:5},
{name:'Taltal',city_id:5},
{name:'Calama',city_id:6},
{name:'Ollague',city_id:6},
{name:'San Pedro de Atacama',city_id:6},
{name:'Maria Elena',city_id:7},
{name:'Tocopilla',city_id:7},
{name:'Chañaral',city_id:8},
{name:'Diego de Almagro',city_id:8},
{name:'Caldera',city_id:9},
{name:'Copiapo',city_id:9},
{name:'Tierra Amarilla',city_id:9},
{name:'Alto del Carmen',city_id:10},
{name:'Freirina',city_id:10},
{name:'Huasco',city_id:10},
{name:'Vallenar',city_id:10},
{name:'Canela',city_id:11},
{name:'Illapel',city_id:11},
{name:'Los Vilos',city_id:11},
{name:'Salamanca',city_id:11},
{name:'Andacollo',city_id:12},
{name:'Coquimbo',city_id:12},
{name:'La Higuera',city_id:12},
{name:'La Serena',city_id:12},
{name:'Paihuaco',city_id:12},
{name:'Vicuña',city_id:12},
{name:'Combarbala',city_id:13},
{name:'Monte Patria',city_id:13},
{name:'Ovalle',city_id:13},
{name:'Punitaqui',city_id:13},
{name:'Río Hurtado',city_id:13},
{name:'Isla de Pascua',city_id:14},
{name:'Calle Larga',city_id:15},
{name:'Los Andes',city_id:15},
{name:'Rinconada',city_id:15},
{name:'San Esteban',city_id:15},
{name:'La Ligua',city_id:16},
{name:'Papudo',city_id:16},
{name:'Petorca',city_id:16},
{name:'Zapallar',city_id:16},
{name:'Hijuelas',city_id:17},
{name:'La Calera',city_id:17},
{name:'La Cruz',city_id:17},
{name:'Limache',city_id:17},
{name:'Nogales',city_id:17},
{name:'Olmue',city_id:17},
{name:'Quillota',city_id:17},
{name:'Algarrobo',city_id:18},
{name:'Cartagena',city_id:18},
{name:'El Quisco',city_id:18},
{name:'El Tabo',city_id:18},
{name:'San Antonio',city_id:18},
{name:'Santo Domingo',city_id:18},
{name:'Catemu',city_id:19},
{name:'Llaillay',city_id:19},
{name:'Panquehue',city_id:19},
{name:'Putaendo',city_id:19},
{name:'San Felipe',city_id:19},
{name:'Santa Maria',city_id:19},
{name:'Casablanca',city_id:20},
{name:'Concon',city_id:20},
{name:'Juan Fernandez',city_id:20},
{name:'Puchuncavi',city_id:20},
{name:'Quilpue',city_id:20},
{name:'Quintero',city_id:20},
{name:'Valparaiso',city_id:20},
{name:'Villa Alemana',city_id:20},
{name:'Viña del Mar',city_id:20},
{name:'Colina',city_id:21},
{name:'Lampa',city_id:21},
{name:'Tiltil',city_id:21},
{name:'Pirque',city_id:22},
{name:'Puente Alto',city_id:22},
{name:'San Jose de Maipo',city_id:22},
{name:'Buin',city_id:23},
{name:'Calera de Tango',city_id:23},
{name:'Paine',city_id:23},
{name:'San Bernardo',city_id:23},
{name:'Alhue',city_id:24},
{name:'Curacavi',city_id:24},
{name:'María Pinto',city_id:24},
{name:'Melipilla',city_id:24},
{name:'San Pedro',city_id:24},
{name:'Cerrillos',city_id:25},
{name:'Cerro Navia',city_id:25},
{name:'Conchali',city_id:25},
{name:'El Bosque',city_id:25},
{name:'Estacion Central',city_id:25},
{name:'Huechuraba',city_id:25},
{name:'Independencia',city_id:25},
{name:'La Cisterna',city_id:25},
{name:'La Granja',city_id:25},
{name:'La Florida',city_id:25},
{name:'La Pintana',city_id:25},
{name:'La Reina',city_id:25},
{name:'Las Condes',city_id:25},
{name:'Lo Barnechea',city_id:25},
{name:'Lo Espejo',city_id:25},
{name:'Lo Prado',city_id:25},
{name:'Macul',city_id:25},
{name:'Maipu',city_id:25},
{name:'Ñuñoa',city_id:25},
{name:'Pedro Aguirre Cerda',city_id:25},
{name:'Peñalolen',city_id:25},
{name:'Providencia',city_id:25},
{name:'Pudahuel',city_id:25},
{name:'Quilicura',city_id:25},
{name:'Quinta Normal',city_id:25},
{name:'Recoleta',city_id:25},
{name:'Renca',city_id:25},
{name:'San Miguel',city_id:25},
{name:'San Joaquin',city_id:25},
{name:'San Ramon',city_id:25},
{name:'Santiago',city_id:25},
{name:'Vitacura',city_id:25},
{name:'El Monte',city_id:26},
{name:'Isla de Maipo',city_id:26},
{name:'Padre Hurtado',city_id:26},
{name:'Peñaflor',city_id:26},
{name:'Talagante',city_id:26},
{name:'Codegua',city_id:27},
{name:'Coinco',city_id:27},
{name:'Coltauco',city_id:27},
{name:'Doñihue',city_id:27},
{name:'Graneros',city_id:27},
{name:'Las Cabras',city_id:27},
{name:'Machali',city_id:27},
{name:'Malloa',city_id:27},
{name:'Mostazal',city_id:27},
{name:'Olivar',city_id:27},
{name:'Peumo',city_id:27},
{name:'Pichidegua',city_id:27},
{name:'Quinta de Tilcoco',city_id:27},
{name:'Rancagua',city_id:27},
{name:'Rengo',city_id:27},
{name:'Requinoa',city_id:27},
{name:'San Vicente de Tagua Tagua',city_id:27},
{name:'La Estrella',city_id:28},
{name:'Litueche',city_id:28},
{name:'Marchihue',city_id:28},
{name:'Navidad',city_id:28},
{name:'Peredones',city_id:28},
{name:'Pichilemu',city_id:28},
{name:'Chepica',city_id:29},
{name:'Chimbarongo',city_id:29},
{name:'Lolol',city_id:29},
{name:'Nancagua',city_id:29},
{name:'Palmilla',city_id:29},
{name:'Peralillo',city_id:29},
{name:'Placilla',city_id:29},
{name:'Pumanque',city_id:29},
{name:'San Fernando',city_id:29},
{name:'Santa Cruz',city_id:29},
{name:'Cauquenes',city_id:30},
{name:'Chanco',city_id:30},
{name:'Pelluhue',city_id:30},
{name:'Curico',city_id:31},
{name:'Hualañe',city_id:31},
{name:'Licanten',city_id:31},
{name:'Molina',city_id:31},
{name:'Rauco',city_id:31},
{name:'Romeral',city_id:31},
{name:'Sagrada Familia',city_id:31},
{name:'Teno',city_id:31},
{name:'Vichuquen',city_id:31},
{name:'Colbun',city_id:32},
{name:'Linares',city_id:32},
{name:'Longavi',city_id:32},
{name:'Parral',city_id:32},
{name:'Retiro',city_id:32},
{name:'San Javier',city_id:32},
{name:'Villa Alegre',city_id:32},
{name:'Yerbas Buenas',city_id:32},
{name:'Constitucion',city_id:33},
{name:'Curepto',city_id:33},
{name:'Empedrado',city_id:33},
{name:'Maule',city_id:33},
{name:'Pelarco',city_id:33},
{name:'Pencahue',city_id:33},
{name:'Rio Claro',city_id:33},
{name:'San Clemente',city_id:33},
{name:'San Rafael',city_id:33},
{name:'Talca',city_id:33},
{name:'Arauco',city_id:34},
{name:'Cañete',city_id:34},
{name:'Contulmo',city_id:34},
{name:'Curanilahue',city_id:34},
{name:'Lebu',city_id:34},
{name:'Los Álamos',city_id:34},
{name:'Tirua',city_id:34},
{name:'Alto Biobio',city_id:35},
{name:'Antuco',city_id:35},
{name:'Cabrero',city_id:35},
{name:'Laja',city_id:35},
{name:'Los Ángeles',city_id:35},
{name:'Mulchen',city_id:35},
{name:'Nacimiento',city_id:35},
{name:'Negrete',city_id:35},
{name:'Quilaco',city_id:35},
{name:'Quilleco',city_id:35},
{name:'San Rosendo',city_id:35},
{name:'Santa Barbara',city_id:35},
{name:'Tucapel',city_id:35},
{name:'Yumbel',city_id:35},
{name:'Chiguayante',city_id:36},
{name:'Concepción',city_id:36},
{name:'Coronel',city_id:36},
{name:'Florida',city_id:36},
{name:'Hualpen',city_id:36},
{name:'Hualqui',city_id:36},
{name:'Lota',city_id:36},
{name:'Penco',city_id:36},
{name:'San Pedro de La Paz',city_id:36},
{name:'Santa Juana',city_id:36},
{name:'Talcahuano',city_id:36},
{name:'Tome',city_id:36},
{name:'Bulnes',city_id:37},
{name:'Chillan',city_id:37},
{name:'Chillan Viejo',city_id:37},
{name:'Cobquecura',city_id:37},
{name:'Coelemu',city_id:37},
{name:'Coihueco',city_id:37},
{name:'El Carmen',city_id:37},
{name:'Ninhue',city_id:37},
{name:'Ñiquen',city_id:37},
{name:'Pemuco',city_id:37},
{name:'Pinto',city_id:37},
{name:'Portezuelo',city_id:37},
{name:'Quillon',city_id:37},
{name:'Quirihue',city_id:37},
{name:'Ranquil',city_id:37},
{name:'San Carlos',city_id:37},
{name:'San Fabian',city_id:37},
{name:'San Ignacio',city_id:37},
{name:'San Nicolas',city_id:37},
{name:'Treguaco',city_id:37},
{name:'Yungay',city_id:37},
{name:'Carahue',city_id:38},
{name:'Cholchol',city_id:38},
{name:'Cunco',city_id:38},
{name:'Curarrehue',city_id:38},
{name:'Freire',city_id:38},
{name:'Galvarino',city_id:38},
{name:'Gorbea',city_id:38},
{name:'Lautaro',city_id:38},
{name:'Loncoche',city_id:38},
{name:'Melipeuco',city_id:38},
{name:'Nueva Imperial',city_id:38},
{name:'Padre Las Casas',city_id:38},
{name:'Perquenco',city_id:38},
{name:'Pitrufquen',city_id:38},
{name:'Pucon',city_id:38},
{name:'Saavedra',city_id:38},
{name:'Temuco',city_id:38},
{name:'Teodoro Schmidt',city_id:38},
{name:'Tolten',city_id:38},
{name:'Vilcun',city_id:38},
{name:'Villarrica',city_id:38},
{name:'Angol',city_id:39},
{name:'Collipulli',city_id:39},
{name:'Curacautin',city_id:39},
{name:'Ercilla',city_id:39},
{name:'Lonquimay',city_id:39},
{name:'Los Sauces',city_id:39},
{name:'Lumaco',city_id:39},
{name:'Puren',city_id:39},
{name:'Renaico',city_id:39},
{name:'Traiguen',city_id:39},
{name:'Victoria',city_id:39},
{name:'Corral',city_id:40},
{name:'Lanco',city_id:40},
{name:'Los Lagos',city_id:40},
{name:'Mafil',city_id:40},
{name:'Mariquina',city_id:40},
{name:'Paillaco',city_id:40},
{name:'Panguipulli',city_id:40},
{name:'Valdivia',city_id:40},
{name:'Futrono',city_id:41},
{name:'La Union',city_id:41},
{name:'Lago Ranco',city_id:41},
{name:'Rio Bueno',city_id:41},
{name:'Ancud',city_id:42},
{name:'Castro',city_id:42},
{name:'Chonchi',city_id:42},
{name:'Curaco de Velez',city_id:42},
{name:'Dalcahue',city_id:42},
{name:'Puqueldon',city_id:42},
{name:'Queilen',city_id:42},
{name:'Quemchi',city_id:42},
{name:'Quellon',city_id:42},
{name:'Quinchao',city_id:42},
{name:'Calbuco',city_id:43},
{name:'Cochamo',city_id:43},
{name:'Fresia',city_id:43},
{name:'Frutillar',city_id:43},
{name:'Llanquihue',city_id:43},
{name:'Los Muermos',city_id:43},
{name:'Maullin',city_id:43},
{name:'Puerto Montt',city_id:43},
{name:'Puerto Varas',city_id:43},
{name:'Osorno',city_id:44},
{name:'Puero Octay',city_id:44},
{name:'Purranque',city_id:44},
{name:'Puyehue',city_id:44},
{name:'Rio Negro',city_id:44},
{name:'San Juan de la Costa',city_id:44},
{name:'San Pablo',city_id:44},
{name:'Chaiten',city_id:45},
{name:'Futaleufu',city_id:45},
{name:'Hualaihue',city_id:45},
{name:'Palena',city_id:45},
{name:'Aysen',city_id:46},
{name:'Cisnes',city_id:46},
{name:'Guaitecas',city_id:46},
{name:'Cochrane',city_id:47},
{name:'O\'higgins',city_id:47},
{name:'Tortel',city_id:47},
{name:'Coyhaique',city_id:48},
{name:'Lago Verde',city_id:48},
{name:'Chile Chico',city_id:49},
{name:'Rio Ibañez',city_id:49},
{name:'Antartica',city_id:50},
{name:'Cabo de Hornos',city_id:50},
{name:'Laguna Blanca',city_id:51},
{name:'Punta Arenas',city_id:51},
{name:'Rio Verde',city_id:51},
{name:'San Gregorio',city_id:51},
{name:'Porvenir',city_id:52},
{name:'Primavera',city_id:52},
{name:'Timaukel',city_id:52},
{name:'Natales',city_id:53},
{name:'Torres del Paine',city_id:53}
])

Genre.create!(name: 'Femenino')
Genre.create!(name: 'Masculino')
Genre.create!(name: 'Indefinido')
Genre.create!(name: 'Prefiere no decir')

Service.create!(name: 'Baño')
Service.create!(name: 'Ducha')
Service.create!(name: 'Lavadora')
Service.create!(name: 'Piscina')
Service.create!(name: 'Lavaderos')
Service.create!(name: 'Juegos Infantiles')
Service.create!(name: 'Telefono')
Service.create!(name: 'Internet')
Service.create!(name: 'Quincho')
Service.create!(name: 'Arriendo Bicicletas')
Service.create!(name: 'Se Permiten Mascotas')
Service.create!(name: 'Cancha de Futbol')
Service.create!(name: 'Cancha de Voley')
Service.create!(name: 'Arriendo de Caballos')
Service.create!(name: 'Mesas Picnic')
Service.create!(name: 'Almacen Interior')
Service.create!(name: 'Arriendo de Kayac')

Season.create!(name: 'Alta', start_date: '2018-10-31', end_date: '2019-03-31')
Season.create!(name: 'Baja', start_date: '2018-04-01', end_date: '2018-10-30')

Currency.create!(iso: 'CLP', name: 'Peso Chileno')
Currency.create!(iso: 'USD', name: 'Dolar Americano')

Paymentmethod.create!(name: 'Tarjeta de Credito')
Paymentmethod.create!(name: 'Efectivo')
Paymentmethod.create!(name: 'Paypal')

birthday = ['1989-07-12', '1989-11-18', '1955-11-10', '1954-05-27', '1982-06-17']

10.times do |i|
    User.create!(
        email: "person#{i}@gmail.com", 
        name: Faker::HarryPotter.character, 
        lastName: Faker::HarryPotter.house ,
        user_type: 'person',
        password: '123456',
        birthday: birthday.sample,
        genre: Genre.order("RANDOM()").first,
        commune: Commune.order("RANDOM()").first,
        biography: Faker::Movie.quote,
        image: Rails.root.join("app/assets/images/users/user1.jpg").open,
        address: 'Miguel Claro 1074',
        phone: Faker::PhoneNumber.phone_number
    )
end

15.times do |i|
    User.create!(
        email: "camping#{i}@gmail.com", 
        name: Faker::HarryPotter.character, 
        lastName: Faker::HarryPotter.location ,
        user_type: 'camping',
        password: '123456',
        birthday: birthday.sample,
        genre: Genre.order("RANDOM()").first,
        commune: Commune.order("RANDOM()").first,
        biography: Faker::Movie.quote,
        image: Rails.root.join("app/assets/images/users/user1.jpg").open,
        address: Faker::Address.street_address,
        phone: Faker::PhoneNumber.phone_number
    )
end

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 1 ,
    address: 'Pedro Lagos, Arica, Región de Arica y Parinacota',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 18 ,
    address: 'Tocopilla 481, San Pedro de Atacama, Región de Antofagasta',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 18 ,
    address: 'Caracoles 101-A, San Pedro de Atacama, Región de Antofagasta',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 38 ,
    address: 'D-485 8360, Paihuaco, Región de Coquimbo',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 133 ,
    address: 'Las Acacias 323, Talagante, Región Metropolitana',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 108 ,
    address: '3011, Alvaro Casanova 2751, La Reina, Las Condes, Región Metropolitana',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 81 ,
    address: 'Camino Internacional 4706, Viña del Mar, Región de Valparaíso',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 179 ,
    address: 'L-21, Colbun, Colbún, VII Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 178 ,
    address: 'Camino el Mirador S/N, Vichuquen, Vichuquén, VII Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 313 ,
    address: 'Ruta 225, Ensenada, Puerto Varas, X Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 295 ,
    address: 'Costanera Nte. 53, Ancud, X Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 321 ,
    address: '2 km South from Chaitén Route 7, Carr Austral, Chaiten, Chaitén, X Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 325 ,
    address: 'X-528, Aysén, XI Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 321 ,
    address: 'km 13, Ruta 235, Chaitén, X Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
     service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 328 ,
    address: 'Dr. Steffens 451, Cochrane, XI Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
     service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 324 ,
    address: '1365, Ruta 235 1307, Palena, X Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
     service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 28 ,
    address: 'Camino Huasco S/N, Huasco, III Región',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
     service_ids: [1,2,6,7,9,11,15]
)



Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 345 ,
    address: 'Sector Refugio Lago Dickson, Torres del Paine, Torres de Paine, Región de Magallanes y de la Antártica Chilena',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'camping',
    commune_id: 345 ,
    address: 'Avenida Guanaqueros 2501',
    info: Faker::Lovecraft.paragraph,
    #images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]  
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 338 ,
    address: 'Caupolicán 411, Punta Arenas, Región de Magallanes y de la Antártica Chilena',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

Camping.create!(name: Faker::StarWars.planet,
    description: Faker::StarWars.quote,
    user: User.order("RANDOM()").find_by(user_type: 'camping'),
    camping_type: 'patio',
    commune_id: 338 ,
    address: 'Y-570, Punta Arenas, Región de Magallanes y de la Antártica Chilena',
    info: Faker::Lovecraft.paragraph,
    images: [Rails.root.join("app/assets/images/campings/Camping1.jpg").open, Rails.root.join("app/assets/images/campings/Camping2.jpg").open, Rails.root.join("app/assets/images/campings/Camping3.jpg").open,Rails.root.join("app/assets/images/campings/Camping4.jpg").open, Rails.root.join("app/assets/images/campings/Camping5.jpg").open],
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    tourism: Faker::Lovecraft.paragraph,
    web: Faker::Internet.url,
    facebook: "www.facebook.com/sitiocamping",
    service_ids: [1,2,6,7,9,11,15]
)

150.times do |i|
    Campsite.create(
        identifier: "Sitio_#{i}", 
        description: "Sitio con mesa y parrilla", 
        camping: Camping.order("RANDOM()").first ,
        status: false)
end

21.times do |i|
    Plan.create!(season_id:1 , person_type:'adult', camping_id:"#{1+i}" , price: 4000)
    Plan.create!(season_id:1 , person_type:'child', camping_id:"#{1+i}" , price: 2000)
    Plan.create!(season_id:2 , person_type:'adult', camping_id:"#{1+i}" , price: 2000)
    Plan.create!(season_id:2 , person_type:'child', camping_id:"#{1+i}" , price: 1000)
end

 AdminUser.create!(email: 'admin@chilecamp.com', password: 'password', password_confirmation: 'password')