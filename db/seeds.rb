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
  last_name: 'Coisne',
  first_name: 'Eugénie',
)
file = URI.open('https://pbs.twimg.com/profile_images/707681437286342656/dwZB6Qg__400x400.jpg')
camille.photo.attach(io: file, filename: 'eugenie.jpg', content_type: 'image/jpg')

User.create!(email: 'b@b.com', password: '123456')
alexia = Profile.last
alexia.update!(
  last_name: 'Dupont',
  first_name: 'Alexia',
)
file = URI.open('https://24.media.tumblr.com/tumblr_m5koiyLN9P1rut9u9o1_500.png')
alexia.photo.attach(io: file, filename: 'alexia.png', content_type: 'image/png')

User.create!(email: 'c@c.com', password: '123456')
heloise = Profile.last
heloise.update!(
  last_name: 'Janin',
  first_name: 'Héloïse',
)
file = URI.open('https://i.pinimg.com/474x/59/86/69/598669c4a978ce3740c7ce61f18a7c23.jpg')
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
  date: Date.today + 23,
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
  date: Date.today + 12,
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
file = URI.open('https://www.facebook.com/herbariumparis/photos/a.1684965628419881/2140230512893388/?type=3&theater')
Profile.last.photo.attach(io: file, filename: 'herbarium.jpg', content_type: 'image/jpg')

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
file = URI.open('https://www.facebook.com/herbariumparis/photos/a.1684965628419881/2140230512893388/?type=3&theater')
place3.photo.attach(io: file, filename: 'herbarium.jpg', content_type: 'image/jpg')

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


puts "CREATING 11 REVIEWS"

review1 = Review.new(rating: 4, animator_rating: 4, content: "Super atelier couronne de fleurs animé par la douce Hélène, les fleurs étaient de qualité et je suis ravie du résultat")
review1.workshop = workshop1
review1.profile = Profile.find_by(last_name: "Coisne")
review1.created_at = Date.today - 16
review1.save!

review2 = Review.new(rating: 5, animator_rating: 4, content: "Atelier très sympathique, j'ai appris plein de choses et je suis contente du résultat !")
review2.workshop = workshop1
review2.profile = Profile.find_by(last_name: "Dupont")
review2.created_at = Date.today - 30
review2.save!

review3 = Review.new(rating: 4, animator_rating: 3, content: "Plutôt cool et bien expliqué")
review3.workshop = workshop1
review3.profile = Profile.find_by(last_name: "Janin")
review3.created_at = Date.today - 45
review3.save!

review4 = Review.new(rating: 5, animator_rating: 5, content: "Je rêvais de créer mon terrarium et c'est chose faite sous les bons conseils de Hélène")
review4.workshop = workshop2
review4.profile = Profile.find_by(last_name: "Coisne")
review4.created_at = Date.today - 6
review4.save!

review5 = Review.new(rating: 4, animator_rating: 5, content: "Bonne ambiance, un large choix de plantes, je recommande !")
review5.workshop = workshop2
review5.profile = Profile.find_by(last_name: "Dupont")
review5.created_at = Date.today - 16
review5.save!

review6 = Review.new(rating: 5, animator_rating: 5, content: "J'ai A-DO-RÉ ! C'était top")
review6.workshop = workshop2
review6.profile = Profile.find_by(last_name: "Janin")
review6.created_at = Date.today - 20
review6.save!

review7 = Review.new(rating: 3, animator_rating: 3, content: "J'avais préféré l'atelier bougie fleurie mais je suis quand même contente de ma cloche")
review7.workshop = workshop3
review7.profile = Profile.find_by(last_name: "Coisne")
review7.created_at = Date.today - 9
review7.save!

review8 = Review.new(rating: 5, animator_rating: 5, content: "Atelier très créatif sous le signe de la bonne humeur")
review8.workshop = workshop3
review8.profile = Profile.find_by(last_name: "Dupont")
review8.created_at = Date.today - 10
review8.save!

review9 = Review.new(rating: 4, animator_rating: 5, content: "Je remercie Elodie de Flowrette pour son bon goût et ses précieux conseils")
review9.workshop = workshop3
review9.profile = Profile.find_by(last_name: "Janin")
review9.created_at = Date.today - 22
review9.save!

review10 = Review.new(rating: 4, animator_rating: 4, content: "La cire est végétale et les fleurs toutes mignonnes je recommande")
review10.workshop = workshop4
review10.profile = Profile.find_by(last_name: "Janin")
review10.created_at = Date.today - 4
review10.save!

review11 = Review.new(rating: 3, animator_rating: 3, content: "Un peu cher pour le résultat")
review11.workshop = workshop4
review11.profile = Profile.find_by(last_name: "Dupont")
review11.created_at = Date.today - 5
review11.save!

review12 = Review.new(rating: 5, animator_rating: 5, content: "Super découverte, mon herbier était accroché au mur du salon le soir-même !")
review12.workshop = workshop5
review12.profile = Profile.find_by(last_name: "Coisne")
review12.created_at = Date.today - 5
review12.save!

review13 = Review.new(rating: 5, animator_rating: 5, content: "Vraiment génial, l'ambiance était chouette et le produit est hyper qualitatif")
review13.workshop = workshop5
review13.profile = Profile.find_by(last_name: "Dupont")
review13.created_at = Date.today - 8
review13.save!

review14 = Review.new(rating: 5, animator_rating: 5, content: "Juste foncez, l'atelier vaut vraiment le coup et le choix des fleurs est top")
review14.workshop = workshop5
review14.profile = Profile.find_by(last_name: "Janin")
review14.created_at = Date.today - 17
review14.save!

review15 = Review.new(rating: 4, animator_rating: 4, content: "Clémence a très bon goût et ce petit atelier était sympa !")
review15.workshop = workshop6
review15.profile = Profile.find_by(last_name: "Janin")
review15.created_at = Date.today - 20
review15.save!

puts "FINISHED"
