require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Profile.destroy_all
Place.destroy_all
Workshop.destroy_all
Review.destroy_all

puts "CREATING 8 PARTICIPANTS"
#   EUGENIE : PARTICIPANTE
User.create!(email: 'a@a.com', password: '123456')
eugenie = Profile.last
eugenie.update!(
  last_name: 'Coisne',
  first_name: 'Eugénie',
)
file = URI.open('https://pbs.twimg.com/profile_images/707681437286342656/dwZB6Qg__400x400.jpg')
eugenie.photo.attach(io: file, filename: 'eugenie.jpg', content_type: 'image/jpg')

#   ALEXIA : PARTICIPANTE
User.create!(email: 'b@b.com', password: '123456')
alexia = Profile.last
alexia.update!(
  last_name: 'Dupont',
  first_name: 'Alexia',
)
file = URI.open('https://24.media.tumblr.com/tumblr_m5koiyLN9P1rut9u9o1_500.png')
alexia.photo.attach(io: file, filename: 'alexia.png', content_type: 'image/png')

#   HELOISE : PARTICIPANTE
User.create!(email: 'c@c.com', password: '123456')
heloise = Profile.last
heloise.update!(
  last_name: 'Janin',
  first_name: 'Héloïse',
)
file = URI.open('https://i.pinimg.com/474x/59/86/69/598669c4a978ce3740c7ce61f18a7c23.jpg')
heloise.photo.attach(io: file, filename: 'heloise.png', content_type: 'image/png')

#   PAUL : PARTICIPANT
User.create!(email: 'd@d.com', password: '123456')
paul = Profile.last
paul.update!(
  last_name: 'Potin',
  first_name: 'Paul',
)
file = URI.open('https://news.sen360.sn/uploads/2020/02/penn-badgley-you-bientot-papa-apres-deux-fausses-couches-de-son-epouse-1447111.jpg')
paul.photo.attach(io: file, filename: 'paul.jpg', content_type: 'image/jpg')

#   ZOÉ : PARTICIPANTE
User.create!(email: 'e@e.com', password: '123456')
zoe = Profile.last
zoe.update!(
  last_name: 'Damart',
  first_name: 'Zoé',
)
file = URI.open('https://fr.web.img3.acsta.net/newsv7/19/10/23/12/10/2270700.jpg')
zoe.photo.attach(io: file, filename: 'zoe.jpg', content_type: 'image/jpg')

# PHILIPPINE : PARTICIPANTE
User.create!(email: 'f@f.com', password: '123456')
philippine = Profile.last
philippine.update!(
  last_name: 'Manaud',
  first_name: 'Philippine',
)
file = URI.open('https://i.pinimg.com/originals/14/02/8b/14028b867601906bf2b401a67348e67f.jpg')
philippine.photo.attach(io: file, filename: 'philippine.jpg', content_type: 'image/jpg')

# LENA : PARTICIPANTE
User.create!(email: 'g@g.com', password: '123456')
lena = Profile.last
lena.update!(
  last_name: 'Pauwels',
  first_name: 'Lena',
)
file = URI.open('https://twilightvampires.e-monsite.com/medias/album/images/kristen.jpg?fx=r_550_550')
lena.photo.attach(io: file, filename: 'lena.jpg', content_type: 'image/jpg')

# ELISABETTA : PARTICIPANTE
User.create!(email: 'h@h.com', password: '123456')
elisabetta = Profile.last
elisabetta.update!(
  last_name: 'Sartori',
  first_name: 'Elisabetta',
)
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583313728/betti_ihmbf6.png')
elisabetta.photo.attach(io: file, filename: 'elisabetta.png', content_type: 'image/png')



puts "CREATING Les Herbes Hautes"
# LES HERBES HAUTES : ORGANISATEUR
User.create!(email: 'hello@herbes.com', password: '123456')
Profile.last.update!(
  last_name: 'Préchat',
  first_name: 'Hélène',
  company: 'Les Herbes Hautes',
  address: '85 Boulevard Voltaire',
  zip_code: '75011',
  city: 'Paris',
  phone_number: '0952090027',
  site_web: 'https://www.lesherbeshautes.fr/',
  facebook: 'https://www.facebook.com/LesHerbesHautes/',
  instagram: 'https://www.instagram.com/atelier_lesherbeshautes/',
  organizer: true,
  animator: true,
  )
file = URI.open('https://www.lesherbeshautes.fr/app/uploads/2020/01/MK4_2725-scaled.jpg')
Profile.last.photo.attach(io: file, filename: 'lesherbeshautes.jpg', content_type: 'image/jpg')

place1 = Place.new(
  name: 'Les Herbes Hautes',
  address: '85 Boulevard Voltaire',
  zip_code: '75011', city: 'PARIS',
  phone_number: '0952090027',
  description: "Les Herbes Hautes est un atelier de création florale, né par amour de la nature. Nous fleurissons avec passion votre mariage et vos événements, en donnant vie à des compositions végétales et fleuries."
  )
place1.profile = Profile.last
place1.save!
file = URI.open('https://www.lesherbeshautes.fr/app/uploads/2020/01/MK4_2725-scaled.jpg')
place1.photo.attach(io: file, filename: 'lesherbeshautes.jpg', content_type: 'image/jpg')

workshop1 = Workshop.new(
  name: 'Couronne en fleurs éternelles',
  description: 'Vous souhaitez créer votre propre couronne en fleurs éternelles pour votre mariage, celui d’une amie, ou simplement pour vous faire plaisir? Cet atelier DIY de 2h est fait pour vous !

Nous vous guiderons pour réaliser une création esthétique et raffinée. Repartez fièrement avec votre propre création pour orner votre joli minois. Les fleurs stabilisées et séchées se gardent des années… Idéales pour un souvenir impérissable !',
  thematic: 'Couronne de fleurs',
  level: 'Débutant',
  price_cents: 6900,
  duration: 120,
  )
workshop1.place = Place.last
workshop1.profile = Profile.last
workshop1.save!

date1 = WorkshopDate.new(
  date: Date.today + 15,
  start_at: '14h00',
  participants: 8
)
date1.workshop = workshop1
date1.save!

date2 = WorkshopDate.new(
  date: Date.today + 20,
  start_at: '9h00',
  participants: 8
)
date2.workshop = workshop1
date2.save!

workshop2 = Workshop.new(
  name: 'Créez votre terrarium',
  description: 'Pendant cet atelier d’1h30-2h, vous apprendrez à composer ces petites merveilles de la nature. Rassurez-vous, Hélène et Elise seront là pour vous guider : choix du contenant, des plantes, de la terre, sables, végétaux. N’hésitez pas à prendre note des petites astuces d’entretien qu’elles vous glisseront… et repartez fièrement avec votre propre création. Avec tout ça, impossible de se planter !

Que vous ayez la main verte ou pas, suivez les conseils de nos passionnées du monde végétal et devenez l’artisan de votre propre terrarium. Laissez parler votre créativité en façonnant vous-même votre petit écosystème !',
  thematic: 'Terrarium',
  level: 'Débutant',
  price_cents: 7900,
  duration: 90,
  )
workshop2.place = Place.last
workshop2.profile = Profile.last
workshop2.save!

date3 = WorkshopDate.new(
  date: Date.today + 25,
  start_at: '15h00',
  participants: 8
)
date3.workshop = workshop2
date3.save!

date4 = WorkshopDate.new(
  date: Date.today + 6,
  start_at: '15h00',
  participants: 8
)
date4.workshop = workshop2
date4.save!


workshop9 = Workshop.new(
  name: 'Bouquet de fleurs séchées',
  description: 'Vous souhaitez créer votre propre bouquet en fleurs éternelles pour donner une touche déco et durable à votre maison? Cet atelier DIY d’1h30 est fait pour vous !

Nous vous guiderons pour réaliser une création esthétique et raffinée. Repartez fièrement avec votre propre bouquet durable pour sublimer votre intérieur.',
  thematic: 'Bouquet',
  level: 'Débutant',
  price_cents: 5900,
  duration: 90,
  )
workshop9.place = Place.last
workshop9.profile = Profile.last
workshop9.save!

date18 = WorkshopDate.new(
  date: Date.today + 3,
  start_at: '16h00',
  participants: 10
)
date18.workshop = workshop9
date18.save!

date19 = WorkshopDate.new(
  date: Date.today + 15,
  start_at: '16h00',
  participants: 10
)
date19.workshop = workshop9
date19.save!


puts "CREATING Happy Folk"
# HAPPY FOLK : ORGANISATEUR
User.create!(email: 'hello@happy.com', password: '123456')
Profile.last.update!(
  last_name: 'Riera',
  first_name: 'Nathalie',
  company: 'Happy Folk',
  address: '64 Boulevard Voltaire',
  zip_code: '75011',
  city: 'Paris',
  phone_number: '0184790117',
  site_web: 'https://www.happyfolk.fr/',
  facebook: 'https://www.facebook.com/happyfolk.fr/',
  instagram: 'https://www.instagram.com/happyfolk.fr/',
  organizer: true,
)

file = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/50862043_773582539675794_2005401804816252928_o.jpg?_nc_cat=106&_nc_sid=7aed08&_nc_ohc=W87Tr4qXyWoAX_6boD5&_nc_ht=scontent-cdt1-1.xx&oh=a9176ef43bca2239cd56ebd9b4915e28&oe=5EF2B4EB')
Profile.last.photo.attach(io: file, filename: 'happyfolk.jpg', content_type: 'image/jpg')

place2 = Place.new(
  name: 'Happy Folk',
  address: '64 Boulevard Voltaire',
  zip_code: '75011',
  city: 'PARIS',
  phone_number: '0184790117',
  description: "Happy Folk est un projet global d’expériences autour de l’art de vivre, de consommer, de travailler Slow basé sur 4 piliers :
La sélections de créateurs, d’artisans ou de start-up slow de talents, les pratiques de bien-être et médecines douces, les ateliers créatifs Do It Yourself, les conférences et rencontres avec des experts reconnus."
  )
place2.profile = Profile.last
place2.save!
file = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/50862043_773582539675794_2005401804816252928_o.jpg?_nc_cat=106&_nc_sid=7aed08&_nc_ohc=W87Tr4qXyWoAX_6boD5&_nc_ht=scontent-cdt1-1.xx&oh=a9176ef43bca2239cd56ebd9b4915e28&oe=5EF2B4EB')
place2.photo.attach(io: file, filename: 'happyfolk.jpg', content_type: 'image/jpg')

puts "CREATING Flowrette"
#   FLOWRETTE : ANIMATEUR
User.create!(email: 'hello@flowrette.com', password: '123456')
Profile.last.update!(
  last_name: 'Gervet',
  first_name: 'Elodie',
  company: 'Flowrette',
  phone_number: '0111111112',
  site_web: 'https://flowrette.com/',
  facebook: 'https://www.facebook.com/flowretteparis/',
  instagram: 'https://www.instagram.com/flowrette_com/',
  animator: true,
  description: "Flowrette est une fleuriste dédiée qui se déplace dans plusieurs lieux pour animer des ateliers floraux, avec un large choix des fleurs séchées pour satisfaire toutes les envies, une ambiance bohème et champêtre, et tout le matériel nécessaire à la confection de produits en fleurs séchées."
  )
file = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/52769502_787858928261755_3674602838241050624_o.png?_nc_cat=105&_nc_sid=7aed08&_nc_ohc=9OeSjl8SvacAX_LNO2e&_nc_ht=scontent-cdt1-1.xx&oh=3a152ac508e98116c2c0166aa09df320&oe=5F002622')
Profile.last.photo.attach(io: file, filename: 'flowrette.png', content_type: 'image/png')

workshop3 = Workshop.new(
  name: 'Jardin de fleurs séchées sous cloche',
  description: 'Venez créer avec nous un paysage de fleurs séchées sous cloche en verre, à s’offrir ou à offrir. Avec un large choix de végétaux séchées (pampa, eucalyptus, immortelles, chatons, gypsophile, …), vous serez guidée pas à pas dans votre création. pour celle qui le souhaitent, elle pourront compléter leur création végétale en intégrant un crystal en pierre naturelle de leur choix (cristal de roche, quartz rose, sélénite) pour associer joli déco et bien-être des pierres.

La cloche, de belle dimension (23cm de haut), permet de laisser libre court à votre créativité !

Tout le matériel est fourni, boisson offerte',
  thematic: 'Cloche florale',
  level: 'Débutant',
  price_cents: 5000,
  duration: 120,
  )

workshop3.place = Place.last
workshop3.profile = Profile.last
workshop3.save!

date5 = WorkshopDate.new(
  date: Date.today + 7,
  start_at: '14h00',
  participants: 6
)
date5.workshop = workshop3
date5.save!

date6 = WorkshopDate.new(
  date: Date.today + 17,
  start_at: '9h00',
  participants: 6
)
date6.workshop = workshop3
date6.save!


puts "CREATING C by Clémence"
#   FLOWRETTE : ANIMATEUR
User.create!(email: 'hello@clemence.com', password: '123456')
Profile.last.update!(
  last_name: 'XXXX',
  first_name: 'Clémence',
  company: 'C by Clémence',
  phone_number: '0111111113',
  site_web: 'https://cbyclemence.com/',
  facebook: 'https://www.facebook.com/cbyclemence',
  instagram: 'https://www.instagram.com/cbyclemence/',
  animator: true,
  description: "Je m’appelle Clémence, j’ai 28 ans. Toulousaine d’origine, je suis installée à Paris depuis octobre 2015.
Créative et passionnée de DIY (do it yourself ou en français « fais le toi-même »), je suis accro au Chaï Latte, aux paillettes, à la photographie, à Pinterest et beaucoup d’autres choses. Créer de mes mains est une réelle passion que je nourris au quotidien : au détour d’une rue ou encore en m’inspirant sur Pinterest.
Entrepreneuse créative, mon activité se partage entre la création de contenu créatif digital pour les marques, la scénographie d’évènement, le set design, ainsi que l’animation d’ateliers créatifs."
  )
file = URI.open('https://cbyclemence.com/wp-content/uploads/2019/02/CONFETTIS-CLEM3.png')
Profile.last.photo.attach(io: file, filename: 'cbyclemence.png', content_type: 'image/png')

workshop6 = Workshop.new(
  name: 'Cadre tropical en mousse',
  description: 'Venez créer un cadre tendance à base de mousse vétégale stabilisée, à s’offrir ou à offrir !
Tout le matériel est fourni, boisson offerte',
  thematic: 'Cadre végétal',
  level: 'Débutant',
  price_cents: 2000,
  duration: 60,
  )

workshop6.place = Place.last
workshop6.profile = Profile.last
workshop6.save!

date12 = WorkshopDate.new(
  date: Date.today + 4,
  start_at: '16h00',
  participants: 10
)
date12.workshop = workshop6
date12.save!

date13 = WorkshopDate.new(
  date: Date.today + 37,
  start_at: '16h00',
  participants: 10
)
date13.workshop = workshop6
date13.save!


puts "CREATING Ponoie"
#   PONOIE : ANIMATEUR
User.create!(email: 'hello@ponoie.com', password: '123456')
Profile.last.update!(
  last_name: 'Roty',
  first_name: 'Justine',
  company: 'Ponoie',
  phone_number: '0111111113',
  site_web: 'https://www.ponoie.com/',
  instagram: 'https://www.instagram.com/ponoie/',
  animator: true,
  description: "Né en Avignon, Ponoie arrive à Paris en 2016 et engage une volonté de créer un produit s’inspirant des odeurs et couleurs de son Sud natal. C’est au travers d’une bougie en cire végétale que Ponoie réalise son souhait : redonner la parole aux fleurs dans nos intérieurs."
  )

file = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/40112800_717757568577594_3021483405104644096_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=ZwnkxJi-vi8AX-Tbo6h&_nc_ht=scontent-cdg2-1.xx&oh=51821ec882122edebf50a8f562157c3d&oe=5EF0821C')
Profile.last.photo.attach(io: file, filename: 'ponoie.jpg', content_type: 'image/jpg')

workshop4 = Workshop.new(
  name: 'Réalisez votre bougie fleurie',
  description: 'Venez participer à cet atelier DIY de 2h30 où nous aurons le plaisir de vous initier à la fabrication d’une bougie fleurie et parfumée 100% vegan ! Ce workshop vous guidera pas à pas dans les différentes étapes de décoration de la cire végétale, manipulation des huiles essentielles biologiques et utilisation de votre bougie.

Vous repartez avec votre bougie à la fin de l’atelier !',
  thematic: 'Bougie florale',
  level: 'Débutant',
  price_cents: 4500,
  duration: 150,
  )
workshop4.place = Place.last
workshop4.profile = Profile.last
workshop4.save!

date7 = WorkshopDate.new(
  date: Date.today - 90,
  start_at: '18h00',
  participants: 8
)
date7.workshop = workshop4
date7.save!

date8 = WorkshopDate.new(
  date: Date.today + 15,
  start_at: '13h00',
  participants: 8
)
date8.workshop = workshop4
date8.save!


puts "CREATING Herbarium"
# HERBARIUM : ORGANISATEUR
User.create!(email: 'hello@herbarium.com', password: '123456')
Profile.last.update!(
  last_name: 'Ruilhat',
  first_name: 'Marion',
  company: 'Herbarium',
  address: '155 rue de Belleville',
  zip_code: '75019',
  city: 'Paris',
  phone_number: '0171609171',
  site_web: 'https://herbarium.fr/',
  facebook: 'https://www.facebook.com/herbariumparis/',
  instagram: 'https://www.instagram.com/herbarium/',
  organizer: true,
  animator: true
  )
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583254679/logo_herbarium_wko9n2.png')
Profile.last.photo.attach(io: file, filename: 'herbarium.png', content_type: 'image/png')

place3 = Place.new(
  name: 'Herbarium',
  address: '155 rue de Belleville',
  zip_code: '75019', city: 'PARIS',
  phone_number: '0171609171',
  description: "Pressed flowers are forever.
Parce qu’une fleur pressée dure toujours, 
Parce que l’artisanat existe encore, 
Parce que le monde végétal nous apaise, 
Parce que les plantes ont leur langage, 
Parce que le made in Paris est possible, 
Parce qu'internet nous rapproche,
 Parce qu'on mérite tous de l'exceptionnel, 
Parce que les rêves se réalisent, 
Parce que la nature est belle.
 Nous sommes Herbarium."
  )
place3.profile = Profile.last
place3.save!
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583254679/logo_herbarium_wko9n2.png')
place3.photo.attach(io: file, filename: 'herbarium.png', content_type: 'image/png')

workshop5 = Workshop.new(
  name: 'Réalisez votre propre herbier',
  description: "Laissez parler votre imagination et découvrez nos secrets de fabrication avec cette expérience unique !

Au cours de cet atelier de 2h dans un cadre intimiste et en petit comité, nous vous apprendrons les étapes de la réalisation d'un herbier, de la mise sous presse jusqu'au montage sous cadre.

Le prix comprend la réalisation de votre création unique en format A4 ainsi qu'un cadre.",
  level: 'Débutant',
  price_cents: 6500,
  duration: 120,
  )
workshop5.place = Place.last
workshop5.profile = Profile.last
workshop5.save!

date9 = WorkshopDate.new(
  date: Date.today + 12,
  start_at: '17h00',
  participants: 6
)
date9.workshop = workshop5
date9.save!

date10 = WorkshopDate.new(
  date: Date.today + 16,
  start_at: '19h00',
  participants: 6
)
date10.workshop = workshop5
date10.save!

date11 = WorkshopDate.new(
  date: Date.today + 19,
  start_at: '18h00',
  participants: 6
)
date11.workshop = workshop5
date11.save!


puts "CREATING La Petite Epicerie"
# LA PETITE EPICERIE : ORGANISATEUR
User.create!(email: 'hello@epicerie.com', password: '123456')
Profile.last.update!(
  last_name: 'Nicoulaud',
  first_name: 'Laura',
  company: 'La Petite Epicerie',
  address: '74 Rue de la Verrerie',
  zip_code: '75004',
  city: 'Paris',
  phone_number: '0173756518',
  site_web: 'https://la-petite-epicerie.fr/fr/',
  facebook: 'https://www.facebook.com/lapetiteepicerieFR/',
  instagram: 'https://www.instagram.com/lapetiteepicerie/',
  organizer: true
  )
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583255493/la_petite_epicerie_x7mcpd.png')
Profile.last.photo.attach(io: file, filename: 'la-petite-epicerie.png', content_type: 'image/png')

place4 = Place.new(
  name: 'La Petite Epicerie, Paris 4e',
  address: '74 Rue de la Verrerie',
  zip_code: '75004', city: 'PARIS',
  phone_number: '0173756518',
  description: "♥ la Petite épicerie ♥ est une boutique de fournitures de loisirs créatifs.
Vous y retrouverez tout un tas de cane en pâte Fimo à découper, de chaines, supports bagues ou boucles d'oreille, de vaisselles ou des gourmandises en miniature, de la papeterie, des kits DIY, et bien d'autres produits encore !
Venez partager un moment convivial et créatif avec d'autres passionnés à l'occasion d'un atelier créatif !"
  )
place4.profile = Profile.last
place4.save!
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583255493/la_petite_epicerie_x7mcpd.png')
place4.photo.attach(io: file, filename: 'la-petite-epicerie.png', content_type: 'image/png')

place5 = Place.new(
  name: "La Petite Epicerie, Chaussée d'Antin",
  address: "47 Rue de la Chaussée d'Antin",
  zip_code: '75009', city: 'PARIS',
  phone_number: '0171379844',
  description: "♥ la Petite épicerie ♥ est une boutique de fournitures de loisirs créatifs.
Vous y retrouverez tout un tas de cane en pâte Fimo à découper, de chaines, supports bagues ou boucles d'oreille, de vaisselles ou des gourmandises en miniature, de la papeterie, des kits DIY, et bien d'autres produits encore !
Venez partager un moment convivial et créatif avec d'autres passionnés à l'occasion d'un atelier créatif !"
  )
place5.profile = Profile.last
place5.save!
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583255493/la_petite_epicerie_x7mcpd.png')
place5.photo.attach(io: file, filename: 'la-petite-epicerie.png', content_type: 'image/png')

puts "CREATING Gina & cie"
#   GINA & CIE : ANIMATEUR
User.create!(email: 'hello@gina.com', password: '123456')
Profile.last.update!(
  last_name: 'XXXXXX',
  first_name: 'Melanie',
  company: 'Gina & cie',
  phone_number: '0111111114',
  site_web: 'http://ginacie.blogspot.com/',
  facebook: 'https://www.facebook.com/byginaetcie/',
  instagram: 'https://www.instagram.com/ginacie/',
  animator: true,
  description: "Collectionneuse de souvenirs & passeuse d'histoires. Passionnée de crochet et de broderie."
  )
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583256854/gina_jqqkm3.png')
Profile.last.photo.attach(io: file, filename: 'ginacie.png', content_type: 'image/png')

workshop7 = Workshop.new(
  name: 'Votre trousse en fleurs brodées',
  description: "Nous vous proposons de découvrir la broderie. Durant cet atelier de 1h30, vous apprendrez à réaliser un dessin, vous pourrez choisir le motif… Nous allons broder sur une petite pochette en coton recyclé. Vous aurez même le choix de la couleur du tissu et du fil.

La broderie, c’est un réel moment de plaisir!",
  level: 'Débutant',
  price_cents: 3000,
  duration: 90,
  )
workshop7.place = place4
workshop7.profile = Profile.last
workshop7.save!

date14 = WorkshopDate.new(
  date: Date.today + 6,
  start_at: '17h00',
  participants: 6
)
date14.workshop = workshop7
date14.save!

date15 = WorkshopDate.new(
  date: Date.today + 40,
  start_at: '16h00',
  participants: 6
)
date15.workshop = workshop7
date15.save!


puts "CREATING L'Atelier Lutèce"
#   ATELIER LUTECE : ANIMATEUR
User.create!(email: 'hello@lutece.com', password: '123456')
Profile.last.update!(
  last_name: 'Baka Gueguen',
  first_name: 'Veronique',
  company: "L'Atelier Lutèce",
  phone_number: '0111111115',
  site_web: 'https://www.latelierlutece.com/',
  facebook: 'https://www.facebook.com/byginaetcie/',
  instagram: 'https://www.instagram.com/l_atelier_lutece_/',
  animator: true,
  description: "Des ateliers créatifs DIY qui conviennent à tous, pour toutes les occasions…"
  )
file = URI.open('https://res.cloudinary.com/eugcoi/image/upload/v1583257607/atelier_lutece_vz67xn.png')
Profile.last.photo.attach(io: file, filename: 'ginacie.png', content_type: 'image/png')

workshop8 = Workshop.new(
  name: 'Tambour de fleurs séchées',
  description: "Créez votre tambour de fleurs séchées étape par étape. Vous apprendrez à équilibrer votre création et jouer des couleurs complémentaires, du mouvement pour un rendu unique et romantique.",
  level: 'Débutant',
  price_cents: 3000,
  duration: 60,
  )
workshop8.place = place5
workshop8.profile = Profile.last
workshop8.save!

date16 = WorkshopDate.new(
  date: Date.today + 35,
  start_at: '10h00',
  participants: 12
)
date16.workshop = workshop8
date16.save!

date17 = WorkshopDate.new(
  date: Date.today + 48,
  start_at: '10h00',
  participants: 12
)
date17.workshop = workshop8
date17.save!



puts "CREATING 28 REVIEWS"

review1 = Review.new(rating: 4, animator_rating: 5, content: "Super atelier couronne de fleurs animé par la douce Hélène, les fleurs étaient de qualité et je suis ravie du résultat")
review1.workshop = workshop1
review1.profile = Profile.find_by(last_name: "Damart")
review1.created_at = Date.today - 9
review1.save!

review2 = Review.new(rating: 5, animator_rating: 5, content: "Atelier très sympathique, j'ai appris plein de choses et je suis ravie du résultat !")
review2.workshop = workshop1
review2.profile = Profile.find_by(last_name: "Dupont")
review2.created_at = Date.today - 15
review2.save!

review3 = Review.new(rating: 5, animator_rating: 5, content: "Très chouette expérience avec Hélène et les autres participants, on plaisante, on apprend et on se sent tellement fiers de rentrer avec notre oeuvre !")
review3.workshop = workshop1
review3.profile = Profile.find_by(last_name: "Sartori")
review3.created_at = Date.today - 24
review3.save!

review4 = Review.new(rating: 4, animator_rating: 5, content: "J’ai beaucoup apprécié l’atelier. Bon accueil. Tout a été fait pour que je sois à l’aise. Explications claires et simples.")
review4.workshop = workshop1
review4.profile = Profile.find_by(last_name: "Manaud")
review4.created_at = Date.today - 25
review4.save!

review5 = Review.new(rating: 5, animator_rating: 5, content: "Très sympa cet atelier créatif qui nous plonge dans l’univers d’une boutique charmante. Je suis repartie avec une magnifique couronne de fleurs que j’ai portée à mon mariage :)")
review5.workshop = workshop1
review5.profile = Profile.find_by(last_name: "Pauwels")
review5.created_at = Date.today - 30
review5.save!

review6 = Review.new(rating: 5, animator_rating: 5, content: "Excellent moment ! La réalisation de la couronne de fleurs est très bien expliquée et le résultat est à la hauteur de mes attentes, merci Hélène !")
review6.workshop = workshop1
review6.profile = Profile.find_by(last_name: "Janin")
review6.created_at = Date.today - 32
review6.save!

review7 = Review.new(rating: 5, animator_rating: 5, content: "Je rêvais de créer mon terrarium et c'est chose faite sous les bons conseils de Hélène")
review7.workshop = workshop2
review7.profile = Profile.find_by(last_name: "Manaud")
review7.created_at = Date.today - 6
review7.save!

review8 = Review.new(rating: 4, animator_rating: 5, content: "Merci à Hélène pour ce super atelier qui s’est déroulé dans la bonne humeur ! :) J’ai appris beaucoup de choses sur les terrariums !")
review8.workshop = workshop2
review8.profile = Profile.find_by(last_name: "Janin")
review8.created_at = Date.today - 20
review8.save!

review9 = Review.new(rating: 5, animator_rating: 5, content: "Super atelier, merci à Hélène qui sait bien transmettre sa passion.")
review9.workshop = workshop2
review9.profile = Profile.find_by(last_name: "Potin")
review9.created_at = Date.today - 15
review9.save!

review10 = Review.new(rating: 5, animator_rating: 5, content: "Moment très sympathique ! Hélène est très amicale et installe une bonne ambiance, tout en étant très didactique. Je recommande :)")
review10.workshop = workshop2
review10.profile = Profile.find_by(last_name: "Pauwels")
review10.created_at = Date.today - 22
review10.save!

review11 = Review.new(rating: 5, animator_rating: 5, content: "Moment très agréable grâce à Elodie et aux participantes qui étaient vraiment top, je suis très contente du résultat !")
review11.workshop = workshop3
review11.profile = Profile.find_by(last_name: "Damart")
review11.created_at = Date.today - 9
review11.save!

review12 = Review.new(rating: 5, animator_rating: 5, content: "Atelier très créatif sous le signe de la bonne humeur")
review12.workshop = workshop3
review12.profile = Profile.find_by(last_name: "Dupont")
review12.created_at = Date.today - 10
review12.save!

review13 = Review.new(rating: 4, animator_rating: 5, content: "Je remercie Elodie de Flowrette pour son bon goût et ses précieux conseils")
review13.workshop = workshop3
review13.profile = Profile.find_by(last_name: "Sartori")
review13.created_at = Date.today - 22
review13.save!

review14 = Review.new(rating: 5, animator_rating: 5, content: "Merci Justine pour ce partage de savoir-faire. C'était un agréable moment et tout était parfait. J'en parlerai autour de moi sans hésiter.")
review14.workshop = workshop4
review14.profile = Profile.find_by(last_name: "Pauwels")
review14.created_at = Date.today - 10
review14.save!

review15 = Review.new(rating: 4, animator_rating: 5, content: "Merci Justine pour cet atelier très poétique et ta bonne humeur !")
review15.workshop = workshop4
review15.profile = Profile.find_by(last_name: "Sartori")
review15.created_at = Date.today - 4
review15.save!

review16 = Review.new(rating: 5, animator_rating: 5, content: "C'était un atelier très créatif et agréable. Justine rend les choses simples et nous en ressortons avec une jolie bougie qui sent bon :)")
review16.workshop = workshop4
review16.profile = Profile.find_by(last_name: "Dupont")
review16.created_at = Date.today - 18
review16.save!

review17 = Review.new(rating: 5, animator_rating: 5, content: "Super découverte, mon herbier était accroché au mur du salon le soir-même !")
review17.workshop = workshop5
review17.profile = Profile.find_by(last_name: "Janin")
review17.created_at = Date.today - 5
review17.save!

review18 = Review.new(rating: 5, animator_rating: 5, content: "Vraiment génial, l'ambiance était chouette et le produit est hyper qualitatif")
review18.workshop = workshop5
review18.profile = Profile.find_by(last_name: "Dupont")
review18.created_at = Date.today - 8
review18.save!

review19 = Review.new(rating: 5, animator_rating: 5, content: "Juste foncez, l'atelier vaut vraiment le coup et le choix des fleurs est top")
review19.workshop = workshop5
review19.profile = Profile.find_by(last_name: "Manaud")
review19.created_at = Date.today - 17
review19.save!

review20 = Review.new(rating: 4, animator_rating: 4, content: "Clémence a très bon goût et ce petit atelier était sympa !")
review20.workshop = workshop6
review20.profile = Profile.find_by(last_name: "Damart")
review20.created_at = Date.today - 20
review20.save!

review21 = Review.new(rating: 4, animator_rating: 4, content: "Atelier très sympa ! Je recommande pour un moment détente et créatif !")
review21.workshop = workshop6
review21.profile = Profile.find_by(last_name: "Sartori")
review21.created_at = Date.today - 30
review21.save!

review22 = Review.new(rating: 4, animator_rating: 4, content: "Nous avons passé un très bon moment entres amies ! Atelier super, accessible à tous grâce aux conseils de Véronique, je recommande fortement :)")
review22.workshop = workshop7
review22.profile = Profile.find_by(last_name: "Pauwels")
review22.created_at = Date.today - 10
review22.save!

review23 = Review.new(rating: 4, animator_rating: 5, content: "Mélanie est adorable et j'adore son accent du sud, sinon j'ai appris des bonnes astuces de broderie florale !")
review23.workshop = workshop7
review23.profile = Profile.find_by(last_name: "Janin")
review23.created_at = Date.today - 22
review23.save!

review24 = Review.new(rating: 4, animator_rating: 5, content: "J'ai hâte de personnaliser mes vêtements avec mes nouvelles skills en broderie florale !")
review24.workshop = workshop7
review24.profile = Profile.find_by(last_name: "Sartori")
review24.created_at = Date.today - 30
review24.save!

review24 = Review.new(rating: 4, animator_rating: 4, content: "Merci pour cet atelier très sympathique, j'ai beaucoup aimé réaliser cette broderie florale avec de jolies fleurs séchées !")
review24.workshop = workshop8
review24.profile = Profile.find_by(last_name: "Manaud")
review24.created_at = Date.today - 10
review24.save!

review25 = Review.new(rating: 3, animator_rating: 3, content: "Très bon atelier et de précieux conseils, mais le choix des fleurs était malheureusemet très restreint...")
review25.workshop = workshop8
review25.profile = Profile.find_by(last_name: "Dupont")
review25.created_at = Date.today - 12
review25.save!

review26 = Review.new(rating: 5, animator_rating: 5, content: "Très bon moment passé avec Hélène qui est agréable et pédagogue! Nous sommes reparties ravies avec de magnifiques bouquets :)")
review26.workshop = workshop9
review26.profile = Profile.find_by(last_name: "Janin")
review26.created_at = Date.today - 10
review26.save!

review27 = Review.new(rating: 5, animator_rating: 5, content: "Bel accueil, ambiance très sympa, beaucoup de choix de fleurs ! Au top, nous sommes plus que ravies, merci pour ce beau moment.")
review27.workshop = workshop9
review27.profile = Profile.find_by(last_name: "Pauwels")
review27.created_at = Date.today - 13
review27.save!

review28 = Review.new(rating: 5, animator_rating: 5, content: "Une expérience très agréable avec des personnes chaleureuses et conviviales ! C'est sympa et détendant de pouvoir laisser parler sa créativité :)")
review28.workshop = workshop9
review28.profile = Profile.find_by(last_name: "Damart")
review28.created_at = Date.today - 13
review28.save!


puts "FINISHED"
