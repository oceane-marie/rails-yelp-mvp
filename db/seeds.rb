# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
hof = { name: 'Hof Van Cleve', address: 'Riemegemstraat 1, 9770 Kruishoutem, Belgium', phone_number: '+32 9 383 58 48', category: 'belgian' }

arpege =  { name: 'Arpège', address: '84 Rue de Varenne, 75007 Paris, France', phone_number: '+33 1 47 05 09 06', category: 'french' }

den = { name: 'Den', address: '2-3-18 Jingumae, Shibuya-ku, Tokyo, Japan', phone_number: '+81 3 6455 5433', category: 'japanese' }

lido = { name: 'Lido 84', address: 'Corso Giuseppe Zanardelli, 196, Gardone Riviera BS, Italy', phone_number: '+39 0365 20019', category: 'italian' }

chairman = { name: 'The Chairman', address: '18 Kau U Fong, Central, Hong Kong, China', phone_number: '+852 2555 2202', category: 'chinese' }

[hof, arpege, den, lido, chairman].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
