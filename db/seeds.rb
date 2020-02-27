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

puts "CREATING 3 PARTICIPANTS"
#   CAMILLE : PARTICIPANT
User.create!(email: 'a@a.com', password: '123456')
camille = Profile.last
camille.update!(
  last_name: 'Bison',
  first_name: 'Camille',
)
file = URI.open('https://www.courrierinternational.com/sites/ci_master/files/styles/image_original_1280/public/assets/images/courrier-international-clonage-alpagas.jpg?itok=-ttP0Z1H')
camille.photo.attach(io: file, filename: 'camille.jpg', content_type: 'image/jpg')

User.create!(email: 'b@b.com', password: '123456')
alexia = Profile.last
alexia.update!(
  last_name: 'Dupont',
  first_name: 'Alexia',
)
file = URI.open('http://www.placedesreseaux.com/img/illustrations-dossiers/soigner-son-image/soigner-son-image-1.jpg')
alexia.photo.attach(io: file, filename: 'alexia.jpg', content_type: 'image/jpg')

User.create!(email: 'c@c.com', password: '123456')
heloise = Profile.last
heloise.update!(
  last_name: 'Janin',
  first_name: 'Héloïse',
)
file = URI.open('https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-fe76916e1b923ade71e253ae6dc031d936e5e8eebac4e26b0fbac650ea6ee360.png')
heloise.photo.attach(io: file, filename: 'heloise.png', content_type: 'image/png')

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

place1 = Place.new(name: 'Les Herbes Hautes', address: '85 Boulevard Voltaire', zip_code: '75011', city: 'PARIS', phone_number: '0952090027', description: "Quibus occurrere bene pertinax miles explicatis ordinibus parans hastisque feriens scuta qui habitus iram pugnantium concitat et dolorem proximos.")
place1.profile = Profile.last
place1.save!
file = URI.open('https://www.lesherbeshautes.fr/app/uploads/2019/07/ATELIERS-solo.jpg')
place1.photo.attach(io: file, filename: 'place1.png', content_type: 'image/jpg')

workshop1 = Workshop.new(
  name: 'Couronne en fleurs éternelles',
  description: 'Vous souhaitez créer votre propre couronne en fleurs éternelles pour votre mariage, celui d’une amie, ou simplement pour vous faire plaisir? Cet atelier DIY de 2h est fait pour vous !

Nous vous guiderons pour réaliser une création esthétique et raffinée. Repartez fièrement avec votre propre création pour orner votre joli minois. Les fleurs stabilisées et séchées se gardent des années… Idéales pour un souvenir impérissable !',
  thematic: 'Couronne de fleurs',
  level: 'Débutant',
  price: 69,
  duration: 120,
  description: "Quibus occurrere bene pertinax miles explicatis ordinibus parans hastisque feriens scuta qui habitus iram pugnantium concitat et dolorem proximos."
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
  price: 79,
  duration: 90,
  description: "Quibus occurrere bene pertinax miles explicatis ordinibus parans hastisque feriens scuta qui habitus iram pugnantium concitat et dolorem proximos."
  )
workshop2.place = Place.last
workshop2.profile = Profile.last
workshop2.save!

date3 = WorkshopDate.new(
  date: Date.today + 10,
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

place2 = Place.new(name: 'Happy Folk', address: '64 Boulevard Voltaire', zip_code: '75011', city: 'PARIS', phone_number: '0184790117', description: "Quibus occurrere bene pertinax miles explicatis ordinibus parans hastisque feriens scuta qui habitus iram pugnantium concitat et dolorem proximos.")
place2.profile = Profile.last
place2.save!
file = URI.open('https://www.happyfolk.fr/wp-content/uploads/2019/01/facebook_cover_affiche.jpg')
place2.photo.attach(io: file, filename: 'place2.jpg', content_type: 'image/jpg')

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
  description: "Quibus occurrere bene pertinax miles explicatis ordinibus parans hastisque feriens scuta qui habitus iram pugnantium concitat et dolorem proximos."
  )

workshop3.place = Place.last
workshop3.profile = Profile.last
workshop3.save!

date5 = WorkshopDate.new(
  date: Date.today + 16,
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
  )

workshop4 = Workshop.new(
  name: 'Réalisez votre bougie fleurie',
  description: 'Venez participer à cet atelier DIY de 2h30 où nous aurons le plaisir de vous initier à la fabrication d’une bougie fleurie et parfumée 100% vegan ! Ce workshop vous guidera pas à pas dans les différentes étapes de décoration de la cire végétale, manipulation des huiles essentielles biologiques et utilisation de votre bougie.

Vous repartez avec votre bougie à la fin de l’atelier !',
  thematic: 'Bougie florale',
  level: 'Débutant',
  price: 45,
  duration: 150,
  description: "Quibus occurrere bene pertinax miles explicatis ordinibus parans hastisque feriens scuta qui habitus iram pugnantium concitat et dolorem proximos."
  )
workshop4.place = Place.last
workshop4.profile = Profile.last
workshop4.save!

date7 = WorkshopDate.new(
  date: Date.today + 10,
  start_at: '18h00',
  participants: 8
)
date7.workshop = workshop4
date7.save!

date8 = WorkshopDate.new(
  date: Date.today + 12,
  start_at: '13h00',
  participants: 8
)
date8.workshop = workshop4
date8.save!

puts "CREATING 11 REVIEWS"

review1 = Review.new(rating: 4, animator_rating: 4, content: "Super atelier couronne de fleurs animé par la douce Hélène, les fleurs étaient de qualité et je suis ravie du résultat")
review1.workshop = workshop1
review1.profile = Profile.find_by(last_name: "Bison")
review1.save!

review2 = Review.new(rating: 5, animator_rating: 4, content: "Atelier très sympathique, j'ai appris plein de choses et je suis contente du résultat !")
review2.workshop = workshop1
review2.profile = Profile.find_by(last_name: "Dupont")
review2.save!

review3 = Review.new(rating: 4, animator_rating: 3, content: "Plutôt cool et bien expliqué")
review3.workshop = workshop1
review3.profile = Profile.find_by(last_name: "Janin")
review3.save!

review4 = Review.new(rating: 5, animator_rating: 5, content: "Je rêvais de créer mon terrarium et c'est chose faite sous les bons conseils de Hélène")
review4.workshop = workshop2
review4.profile = Profile.find_by(last_name: "Bison")
review4.save!

review5 = Review.new(rating: 4, animator_rating: 5, content: "Bonne ambiance, un large choix de plantes, je recommande !")
review5.workshop = workshop2
review5.profile = Profile.find_by(last_name: "Dupont")
review5.save!

review6 = Review.new(rating: 5, animator_rating: 5, content: "J'ai A-DO-RÉ ! C'était top")
review6.workshop = workshop2
review6.profile = Profile.find_by(last_name: "Janin")
review6.save!

review7 = Review.new(rating: 3, animator_rating: 3, content: "J'avais préféré l'atelier bougie fleurie mais je suis quand même contente de ma cloche")
review7.workshop = workshop3
review7.profile = Profile.find_by(last_name: "Bison")
review7.save!

review8 = Review.new(rating: 5, animator_rating: 5, content: "Atelier très créatif sous le signe de la bonne humeur")
review8.workshop = workshop3
review8.profile = Profile.find_by(last_name: "Dupont")
review8.save!

review9 = Review.new(rating: 4, animator_rating: 5, content: "Je remercie Elodie de Flowrette pour son bon goût et ses précieux conseils")
review9.workshop = workshop3
review9.profile = Profile.find_by(last_name: "Janin")
review9.save!

review10 = Review.new(rating: 5, animator_rating: 4, content: "La cire est végétale et les fleurs toutes mignonnes je recommande")
review10.workshop = workshop4
review10.profile = Profile.find_by(last_name: "Bison")
review10.save!

review11 = Review.new(rating: 3, animator_rating: 3, content: "Un peu cher pour le résultat")
review11.workshop = workshop4
review11.profile = Profile.find_by(last_name: "Dupont")
review11.save!

puts "FINISHED"
