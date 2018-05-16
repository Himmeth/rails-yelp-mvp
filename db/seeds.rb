require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  string = ""
  resto = Restaurant.new(name: Faker::Pokemon.name, address: "#{Faker::Pokemon.location}, #{Faker::Pokemon.move} avenue", phone_number: "#{Faker::PhoneNumber.phone_number}", category: "#{category[rand(0..4)]}")
  resto.save
  5.times do
    string += " #{Faker::TheFreshPrinceOfBelAir.quote}"
  end

  review = Review.new(restaurant_id: resto.id, content: "#{string}", rating: rand(0..5))
  review.save
end

 # t.string "name"
 #    t.string "address"
 #    t.string "phone_number"
 #    t.string "category"

 #        t.text "content"
 #    t.integer "rating"
 #    t.integer "restaurant_id"
