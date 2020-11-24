# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating fake users...'
User.destroy_all
20.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    bio: "I like to take care of children and I had very good references",
    max_cap:  rand(1..5),
    number_of_kids:  rand(1..4),
    can_host: [true, false].sample,
    year_of_birth: Faker::Number.number(digits: 4) ,
    # longitude: Faker::Address.longitude,
    # latitude: Faker::Address.latitude,
    # profile_picture: Faker::Avatar.image, ??
  )
  user.save!
end
puts 'Finished!'

# alice.picture.attach(io: URI.open("https://source.unsplash.com/38dk7QXDBzs"), filename: "alice", content_type: 'image/png')
