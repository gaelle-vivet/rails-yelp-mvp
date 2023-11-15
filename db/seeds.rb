# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: '06 74 03 98 00',
  category: 'japanese'
}
pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '03 34 24 22 40',
  category: 'italian'
}

violeta = {
  name: 'Violeta',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '03 34 24 22 40',
  category: 'belgian'
}

gaelle = {
  name: 'Gaelle',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '06 08 03 87 64',
  category: 'french'
}

sophie_bar = {
  name: 'Sophie Bar',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '06 81 57 58 79',
  category: 'chinese'
}

[dishoom, pizza_east, violeta, gaelle, sophie_bar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
