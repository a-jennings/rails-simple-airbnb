# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Flat.create!(name: Faker::TvShows::Simpsons.location,
              address: Faker::Address.street_address,
              description: Faker::Movies::StarWars.quote,
              price_per_night: rand(50..150),
              number_of_guests: rand(1..10))
end

puts "Seeded #{Flat.count} flats!s"
