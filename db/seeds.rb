# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Workshop.destroy_all
Place.destroy_all
Profile.destroy_all
User.destroy_all


#   CAMILLE : PARTICIPANT
User.create!(email: 'a@a.com', password: '123456')
Profile.last.update!(
  last_name: 'Bison',
  first_name: 'Camille',
  organizer: false,
  animator: false,
  participant: true,
  )


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
  animator: false,
  participant: false,
  )

place1 = Place.new(name: 'Les Herbes Hautes', address: '85 Boulevard Voltaire', zip_code: '75011', city: 'PARIS', phone_number: '0952090027')
place1.profile = Profile.last
place1.save!

workshop1 = Workshop.new(
  name: 'Couronne en fleurs éternelles',
  description: 'Vous souhaitez créer votre propre couronne en fleurs éternelles pour votre mariage, celui d’une amie, ou simplement pour vous faire plaisir? Cet atelier DIY de 2h est fait pour vous !

Nous vous guiderons pour réaliser une création esthétique et raffinée. Repartez fièrement avec votre propre création pour orner votre joli minois. Les fleurs stabilisées et séchées se gardent des années… Idéales pour un souvenir impérissable !',
  thematic: 'Couronne de fleurs',
  level: 'Débutant',
  price: 69,
  duration: 120,
  participants: 8,
  )
workshop1.place = Place.last
workshop1.profile = Profile.last
workshop1.save!

workshop2 = Workshop.new(
  name: 'Créez votre terrarium',
  description: 'Pendant cet atelier d’1h30-2h, vous apprendrez à composer ces petites merveilles de la nature. Rassurez-vous, Hélène et Elise seront là pour vous guider : choix du contenant, des plantes, de la terre, sables, végétaux. N’hésitez pas à prendre note des petites astuces d’entretien qu’elles vous glisseront… et repartez fièrement avec votre propre création. Avec tout ça, impossible de se planter !

Que vous ayez la main verte ou pas, suivez les conseils de nos passionnées du monde végétal et devenez l’artisan de votre propre terrarium. Laissez parler votre créativité en façonnant vous-même votre petit écosystème !',
  thematic: 'Terrarium',
  level: 'Débutant',
  price: 79,
  duration: 90,
  participants: 8,
  )
workshop2.place = Place.last
workshop2.profile = Profile.last
workshop2.save!




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
  animator: false,
  participant: false,
  )
place2 = Place.new(name: 'Happy Folk', address: '64 Boulevard Voltaire', zip_code: '75011', city: 'PARIS', phone_number: '0184790117')
place2.profile = Profile.last
place2.save!



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
  organizer: false,
  animator: true,
  participant: false,
  )

workshop3 = Workshop.new(
  name: 'Jardin de fleurs séchées sous cloche',
  description: 'Venez créer avec nous un paysage de fleurs séchées sous cloche en verre, à s’offrir ou à offrir. Avec un large choix de végétaux séchées (pampa, eucalyptus, immortelles, chatons, gypsophile, …), vous serez guidée pas à pas dans votre création. pour celle qui le souhaitent, elle pourront compléter leur création végétale en intégrant un crystal en pierre naturelle de leur choix (cristal de roche, quartz rose, sélénite) pour associer joli déco et bien-être des pierres.

La cloche, de belle dimension (23cm de haut), permet de laisser libre court à votre créativité !

Tout le matériel est fourni, boisson offerte',
  thematic: 'Cloche florale',
  level: 'Débutant',
  price: 50,
  duration: 120,
  participants: 6,
  )
workshop3.place = Place.last
workshop3.profile = Profile.last
workshop3.save!


#   PONOIE : ANIMATEUR
User.create!(email: 'hello@ponoie.com', password: '123456')
Profile.last.update!(
  last_name: 'Roty',
  first_name: 'Justine',
  company: 'Ponoie',
  phone_number: '0111111113',
  site_web: 'https://www.ponoie.com/',
  instagram: 'https://www.instagram.com/ponoie/',
  organizer: false,
  animator: true,
  participant: false,
  )


workshop4 = Workshop.new(
  name: 'Réalisez votre bougie fleurie',
  description: 'Venez participer à cet atelier DIY de 2h30 où nous aurons le plaisir de vous initier à la fabrication d’une bougie fleurie et parfumée 100% vegan ! Ce workshop vous guidera pas à pas dans les différentes étapes de décoration de la cire végétale, manipulation des huiles essentielles biologiques et utilisation de votre bougie.

Vous repartez avec votre bougie à la fin de l’atelier !',
  thematic: 'Bougie florale',
  level: 'Débutant',
  price: 45,
  duration: 150,
  participants: 8,
  )
workshop4.place = Place.last
workshop4.profile = Profile.last
workshop4.save!
