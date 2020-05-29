# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
puts "deleted old data"

travelizer = Project.create(name: "Travelizer", description:"A new web application for travel enthusiasts, a platform to plan, create and share travel itineraries.", url: "https://travelizer-evakra.herokuapp.com/", github: "https://github.com/EvaKra/travelizer")
travelizer.photos.attach(io: File.open('app/assets/images/Travelizer_grouped.png'), filename: 'Travelizer_grouped.png', content_type: 'image/png')
puts "travelizer done"

recyclable = Project.create(name: "Recyclable", description:"Recycling household waste can be confusing. This app helps users make quick and effective decisions.", url: "http://www.recyclable.rocks/", github: "https://github.com/EvaKra/recyclable")
recyclable.photos.attach(io: File.open('app/assets/images/products1.png'), filename: 'products1.png', content_type: 'image/png')
recyclable.photos.attach(io: File.open('app/assets/images/search1.png'), filename: 'search1.png', content_type: 'image/png')
recyclable.save!
puts "recyclable done"



puts"all done, fab"