# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
puts "deleted old data"

travelizer = Project.new(name: "Travelizer", description:"A new web application for travel enthusiasts. Users can visit the itinerary library to find inspiration for their next trip. Once decided on a destination Travelizer allows users to create and share their own travel itineraries with the Travelizer community.", url: "https://travelizer-evakra.herokuapp.com/", github: "https://github.com/EvaKra/travelizer")
travelizer.photos.attach(io: File.open('app/assets/images/Travelizer_grouped.png'), filename: 'project.png', content_type: 'image/png')
travelizer.save!
puts "travelizer done"

recyclable = Project.new(name: "Recyclable", description:"Recycling household waste can be confusing. Recyclable helps users make quick and effective decisions as to whether a piece of packaging can be recycled. It also includes a recycling quiz for those who want to improve their recycling knowledge.", url: "http://www.recyclable.rocks/", github: "https://github.com/EvaKra/recyclable", demo: "https://www.youtube.com/watch?v=L9Pvj2iJ6po&feature=youtu.be&t=5380")
recyclable.photos.attach(io: File.open('app/assets/images/Recyclable3.png'), filename: 'project.png', content_type: 'image/png')
recyclable.save!
puts "recyclable done"



puts"all done, fab"