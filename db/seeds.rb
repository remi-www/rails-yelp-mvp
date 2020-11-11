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
tour_argent = { name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris", phone_number: "01 43 54 23 31", category: "french" }
pipino = { name: "Il Pipino", address: "38 rue Julien Lacroix, 75020 Paris", phone_number: "01 41 57 23 91", category: "italian" }
fushikawa = { name: "Fushikawa", address: "1 rue de Belleville, 75019 Paris", phone_number: "06 74 33 33 91", category: "japanese" }
china = { name: "China", address: "18 bld de Belleville, 75019 Paris", phone_number: "03 41 57 23 43", category: "chinese" }
frite = {name: "Frites", address: "3 rue de la Frite, 2222 Friteland", phone_number: "02 34 45 56 67", category: "belgian"}

[ tour_argent, pipino, fushikawa, china, frite ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
