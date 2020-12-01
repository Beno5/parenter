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
    email: "sarah1@example.com",
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

  #################################

  martina = User.new(
    email: "martina@example.com",
    password: "123456",
    first_name: "Martina",
    last_name: "Schulz",
    address: "Martin-Luther-Straße 1, 70372 Stuttgart",
    bio: "I like to take care of children and I had very good references",
    max_cap:  2,
    can_host: true,
    year_of_birth: 1981,
    is_nanny: true,
    price: 11,
  )
  martina.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487265/gabriel-silverio-u3WmDyKGsrY-unsplash_wyhosv.jpg"), filename: "martina.jpg", content_type: 'image/png')
  martina.save!

############################# 

  mario = User.new(
    email: "mario@example.com",
    password: "123456",
    first_name: "Mario",
    last_name: "Janssen",
    address: "Hofener Str. 126, 70372 Stuttgart",
    bio: "I like to take care of children and I had very good references",
    max_cap:  3,
    can_host: false,
    year_of_birth: 1998,
    is_nanny: true,
    price: 8,
  )
  mario.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487528/ben-den-engelsen-YUu9UAcOKZ4-unsplash_zh1ztq.jpg"), filename: "mario.jpg", content_type: 'image/png')
  mario.save!

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

  ############################# 

  lucy = User.new(
    email: "lucy@example.com",
    password: "123456",
    first_name: "Lucy",
    last_name: "Schmitt",
    address: "Mercedesstraße 100, 70372 Stuttgart",
    max_cap:  3,
    can_host: true,
    year_of_birth: 1985,
    is_nanny: true,
    price: 13,
  )
  lucy.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487597/ansley-ventura---SIXoW9s9A-unsplash_cfb58n.jpg"), filename: "lucy.jpg", content_type: 'image/png')
  lucy.save!

    ############################# 

    helen = User.new(
      email: "helen@example.com",
      password: "123456",
      first_name: "Helen",
      last_name: "Pfeffer",
      address: "Wilhelma 13, 70376 Stuttgart",
      max_cap: 3,
      can_host: true,
      year_of_birth: 1989,
      is_nanny: true,
      price: 10,
    )
    helen.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487641/courtney-cook-TSZo17r3m0s-unsplash_kwub5d.jpg"), filename: "helen.jpg", content_type: 'image/png')
    helen.save!

      ############################# 

  bob = User.new(
    email: "bob@example.com",
    password: "123456",
    first_name: "Bob",
    last_name: "Smith",
    address: "Thomastraße 99, 70192 Stuttgartt",
    max_cap: 3,
    can_host: true,
    year_of_birth: 1990,
    is_nanny: true,
    price: 7,
  )
  bob.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487693/christian-buehner-DItYlc26zVI-unsplash_eh9yvh.jpg"), filename: "bob.jpg", content_type: 'image/png')
  bob.save!

    ############################# 

    teresa = User.new(
      email: "teresa@example.com",
      password: "123456",
      first_name: "Teresa",
      last_name: "Herzog",
      address: "Stresemannstraße 6, 70191 Stuttgart",
      max_cap: 3,
      can_host: true,
      year_of_birth: 1977,
      is_nanny: true,
      price: 15,
    )
    teresa.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487738/christiana-rivers-O_XIvDy0pcs-unsplash_qct7k4.jpg"), filename: "teresa.jpg", content_type: 'image/png')
    teresa.save!

      ############################# 

  alfred = User.new(
    email: "alfred@example.com",
    password: "123456",
    first_name: "Alfred",
    last_name: "Weber",
    address: "Wartbergstraße 40, 70191 Stuttgart",
    max_cap: 3,
    can_host: true,
    year_of_birth: 1981,
    is_nanny: true,
    price: 12,
  )
  alfred.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487793/irene-strong-v2aKnjMbP_k-unsplash_guy718.jpg"), filename: "alfred.jpg", content_type: 'image/png')
  alfred.save!


  hallie = User.new(
    email: "hallie@example.com",
    password: "123456",
    first_name: "Hallie",
    last_name: "Obrian",
    address: "Schloßpl., 70173 Stuttgart",
    bio: "I love children",
    max_cap:  4,
    can_host: true,
    year_of_birth: 1996,
    is_nanny: true,
    price: 12,
  )
  hallie.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487984/allef-vinicius-C_1jjFJioWg-unsplash_koy7sj.jpg"), filename: "alice.jpg", content_type: 'image/png')
  hallie.save!

  #############################

  kasey = User.new(
    email: "kasey@example.com",
    password: "123456",
    first_name: "Kasey",
    last_name: "Livingston",
    address: "Teinacher Str. 20, 70372 Stuttgart",
    bio: "I am a university student and taking care of children is my hobby",
    max_cap:  3,
    can_host: true,
    year_of_birth: 1995,
    is_nanny: true,
    price: 16,
  )
  kasey.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487993/carlos-lindner-zvZ-HASOA74-unsplash_vdrqql.jpg"), filename: "alice.jpg", content_type: 'image/png')
  kasey.save!

  ############################

  gabriella = User.new(
    email: "gabriella@example.com",
    password: "123456",
    first_name: "Gabriella",
    last_name: "Marin",
    address: "Claudius-Keller-Straße 3C, 81669 München",
    bio: "Please hire me",
    max_cap:  6,
    can_host: true,
    year_of_birth: 1990,
    is_nanny: true,
    price: 13,
  )
  gabriella.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606487996/brooke-cagle-HRZUzoX1e6w-unsplash_dgtme2.jpg"), filename: "alice.jpg", content_type: 'image/png')
  gabriella.save!

  ############################

  catherine = User.new(
    email: "catherine@example.com",
    password: "123456",
    first_name: "Catherine",
    last_name: "Jones",
    address: "Nordbahnhofstraße 203, 70191 Stuttgart",
    bio: "Children are my life",
    max_cap:  2,
    can_host: true,
    year_of_birth: 1984,
    is_nanny: true,
    price: 19,
  )
  catherine.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606488083/martin-guido-aYfyllIz-Xk-unsplash_tbqago.jpg"), filename: "alice.jpg", content_type: 'image/png')
  catherine.save!

  ############################

  darlene = User.new(
    email: "darlene@example.com",
    password: "123456",
    first_name: "Darlene",
    last_name: "Bentley",
    address: "Mailänder Platz 7, 70173 Stuttgart",
    bio: "I love cooking and cleaning",
    max_cap:  1,
    can_host: true,
    year_of_birth: 1980,
    is_nanny: true,
    price: 7,
  )
  darlene.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1606488094/valentin-lacoste-ggAPxrb4Deg-unsplash_g4gxqo.jpg"), filename: "alice.jpg", content_type: 'image/png')
  darlene.save!
  booking5 = Booking.create(nanny: sarah, parent: michael, start_date: "Thu, 26 Nov 2020 12:06:13 UTC +00:00", end_date: "Thu, 26 Nov 2020 15:16:13 UTC +00:00", status: "pending")

  review5 = Review.create(nanny: sarah, parent: michael, content: 'Sarah was very good and kids love her!', rating: 5)
  review3 = Review.create(nanny: sarah, parent: michael, content: 'Sarah was very good and kids love her!', rating: 4)
  review2 = Review.create(nanny: sarah, parent: michael, content: 'Sarah was very good and kids love her!', rating: 3)
  review1 = Review.create(nanny: sarah, parent: michael, content: 'Sarah was very good and kids love her!', rating: 5)
  review4 = Review.create(nanny: sarah, parent: michael, content: 'Sarah was very good and kids love her!', rating: 5)
puts 'Finished!'

