# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
puts "deleted old data"

recyclable = Project.create(name: "Recyclable", description:"An app that helps the user to recycle more effectively.", url: "http://www.recyclable.rocks/", github: "https://github.com/EvaKra/recyclable")
recyclable.photos.attach(io: File.open('app/assets/images/products1.png'), filename: 'products1.png', content_type: 'image/png')
recyclable.photos.attach(io: File.open('app/assets/images/search1.png'), filename: 'search1.png', content_type: 'image/png')
recyclable.save!
puts "recyclable done"

travelizer = Project.create(name: "Travelizer", description:"Platform to share travel itineraries.", url: "https://travelizer-evakra.herokuapp.com/", github: "https://github.com/EvaKra/travelizer")
travelizer.photos.attach(io: File.open('app/assets/images/Travelizer_search.png'), filename: 'Travelizer_search.png', content_type: 'image/png')
puts "travelizer done"

puts"all done, fab"