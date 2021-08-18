# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "111-111-1111", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "222-111-1111", category: "italian" }
dominos = { name: "Dishoom", address: "7769 Mecuco St, Roma E2 7JE", phone_number: "333-111-1111", category: "japanese" }
taco_bell = { name: "Pizza East", address: "55A Lion Low St, Rio E1 6PQ", phone_number: "444-111-1111", category: "chinese" }
mcdonalds = { name: "McDonalds", address: "87 Gofnf'aj St, SF E5 76", phone_number: "555-111-1111", category: "belgian" }

[ dishoom, pizza_east, dominos, taco_bell, mcdonalds ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
