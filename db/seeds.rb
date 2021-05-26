# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PHONE = 

puts "Generating DB"

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name ,
    address: Faker::Space.distance_measurement + " Street",
    phone_number: Faker::PhoneNumber.subscriber_number(length: 9),
    category: Restaurant::CATEGORY.sample
  )
  puts restaurant.name
end

puts "DB generated"