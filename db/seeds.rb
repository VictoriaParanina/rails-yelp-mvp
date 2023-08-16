# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: +7927134567}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: +7927134567}
sushi_shop =  {name: "Sushi Shop", address: "1 Isatis, Bordeaux", category: "japanese", phone_number: +7927134567}
dodo = {name: "Dodo Pizza", address: "5 Bogatyrskaya, Moscow", category: "italian", phone_number: +7927134567}
tims_blinchiki = {name: "Tim's Blinchiki", address: "3 Khromova, Moscow", category: "belgian", phone_number: +7927134567}
[dishoom, pizza_east, sushi_shop, dodo, tims_blinchiki ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
ç
