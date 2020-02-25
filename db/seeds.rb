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

User.create!(email: 'a@a.com', password: '123456')
User.create!(email: 'b@b.com', password: '123456')

place = Place.new(name: 'Place 1', address: '16 villa Gaudelet', zip_code: '75011', city: 'PARIS', phone_number: '0642424242')
place.profile = Profile.first
place.save

workshop = Workshop.new(name: 'Workshop 1')
workshop.place = Place.first
workshop.profile = Profile.last
workshop.save!

workshop = Workshop.new(name: 'Workshop 2')
workshop.place = Place.first
workshop.profile = Profile.last
workshop.save!
