# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

require 'faker'

puts "Destroying all users"

User.destroy_all

puts 'Creating fake users...'


  alice = User.new(
    email: "alice@example.com",
    password: "123456",
    first_name: "Alice",
    last_name: "Parker",
    address: "Martin-Luther-Straße 65, 70372 Stuttgart",
    bio: "I like to take care of children and I had very good references",
    max_cap:  2,
    can_host: true,
    year_of_birth: 1991,
    is_nanny: true,
    price: 8,
  )
  alice.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606303161/luis-villasmil-6qf1uljGpU4-unsplash_ske56e.jpg"), filename: "alice.jpg", content_type: 'image/png')
  alice.save!

############################# 

  sarah = User.new(
    email: "sarah@example.com",
    password: "123456",
    first_name: "Sarah",
    last_name: "Lahm",
    address: "Martin-Luther-Straße 80, 70372 Stuttgart",
    bio: "I like to take care of children and I had very good references",
    max_cap:  3,
    can_host: false,
    year_of_birth: 1995,
    is_nanny: true,
    price: 10,
  )
  sarah.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606311898/christopher-campbell-rDEOVtE7vOs-unsplash_hnpf2t.jpg"), filename: "sarah.jpg", content_type: 'image/png')
  sarah.save!

  ############################# 

  michael = User.new(
    email: "michael@example.com",
    password: "123456",
    first_name: "Michael",
    last_name: "Scofield",
    address: "Martha-Schmidtmann-Straße 7-9, 70374 Stuttgart",
    number_of_kids: 2,
    can_host: true,
    year_of_birth: 1985,
    is_nanny: false,
  )
  michael.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606312247/7399107_orig_g31vi1.jpg"), filename: "michael.jpg", content_type: 'image/png')
  michael.save!

puts 'Finished!'

