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

Review.destroy_all
Booking.destroy_all
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

  greg = User.new(
    email: "greg@example.com",
    password: "123456",
    first_name: "Greg",
    last_name: "Smith",
    address: "Jahnstraße 120, 70597 Stuttgart",
    number_of_kids: 2,
    can_host: true,
    year_of_birth: 1985,
    is_nanny: false,
  )
  greg.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1607007853/joseph-gonzalez-iFgRcqHznqg-unsplash_vmrlpn.jpg"), filename: "greg.jpg", content_type: 'image/png')
  greg.save!

  bill = User.new(
    email: "bill@example.com",
    password: "123456",
    first_name: "Bill",
    last_name: "Johnson",
    address: "Jahnstraße 25, 70597 Stuttgart",
    number_of_kids: 3,
    can_host: true,
    year_of_birth: 1980,
    is_nanny: false,
  )
  bill.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1607007983/rui-silvestre-hAMJpesMeDE-unsplash_hqihmz.jpg"), filename: "bill.jpg", content_type: 'image/png')
  bill.save!

  philip = User.new(
    email: "philip@example.com",
    password: "123456",
    first_name: "Philip",
    last_name: "Schulz",
    address: "Jahnstraße 2, 70597 Stuttgart",
    number_of_kids: 1,
    can_host: true,
    year_of_birth: 1982,
    is_nanny: false,
  )
  philip.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1607008071/aatik-tasneem-7omHUGhhmZ0-unsplash_zwbpv9.jpg"), filename: "philip.jpg", content_type: 'image/png')
  philip.save!

  hans = User.new(
    email: "hanz@example.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Schmit",
    address: "Jahnstraße 7, 70597 Stuttgart",
    number_of_kids: 2,
    can_host: true,
    year_of_birth: 1982,
    is_nanny: false,
  )
  hans.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1607008141/albert-dera-uIcbTOhMHOU-unsplash_rb1uln.jpg"), filename: "hans.jpg", content_type: 'image/png')
  hans.save!

  arthur = User.new(
    email: "arthur@example.com",
    password: "123456",
    first_name: "Arthur",
    last_name: "Kahn",
    address: "Jahnstraße 7, 70597 Stuttgart",
    number_of_kids: 2,
    can_host: true,
    year_of_birth: 1982,
    is_nanny: false,
  )
  arthur.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1607008263/ali-yahya-155huuQwGvA-unsplash_oie3jy.jpg"), filename: "arthur.jpg", content_type: 'image/png')
  arthur.save!


  booking5 = Booking.create(nanny: sarah, parent: michael, start_date: "2020-12-04 12:00:00", end_date: "2020-12-04 17:00:00", status: "confirmed")
  booking4 = Booking.create(nanny: martina, parent: greg, start_date: "2020-12-05 19:00:00", end_date: "2020-12-05 21:00:00", status: "confirmed")
  booking5 = Booking.create(nanny: mario, parent: arthur, start_date: "2020-12-05 16:00:00", end_date: "2020-12-05 17:00:00", status: "pending")

  ## review5 = Review.create(nanny: sarah, parent: greg, content: 'Sarah was very good and kids love her!', rating: 5)
  review3 = Review.create(nanny: mario, parent: greg, content: 'Mario is a very good babysitter. He is very kind and always flexible', rating: 4)
  review2 = Review.create(nanny: mario, parent: philip, content: 'Mario is not bad. He tries his best but my kids are just too naughty', rating: 3)
  review1 = Review.create(nanny: mario, parent: bill, content: 'I highly recommend Mario. He likes to have fun with the kids and my kids always ask when is Mario coming again', rating: 5)
  review4 = Review.create(nanny: mario, parent: hans, content: 'Mario is very cheap but also worth every penny!', rating: 5)
  review6 = Review.create(nanny: martina, parent: philip, content: 'I love Martina. She is very flexible and always comes on time', rating: 4)
  review7 = Review.create(nanny: martina, parent: arthur, content: 'I love the fact that Martina is able to over to our place as sometimes I do not have time to drop of my daughter at her place', rating: 5)
  ## review5 = Review.create(nanny: alice, parent: greg, content: 'Alice was very good and kids love her!', rating: 5)
  review5 = Review.create(nanny: helen, parent: greg, content: 'Helen was okej!', rating: 3)
  review8 = Review.create(nanny: lucy, parent: greg, content: 'Lucy was not there on time!', rating: 1)
  review9 = Review.create(nanny: teresa, parent: greg, content: 'Sarah was very good and kids love her!', rating: 4)
  review10 = Review.create(nanny: bob, parent: greg, content: 'Bob was not so frendly!', rating: 3)
  review11 = Review.create(nanny: alfred, parent: greg, content: 'Alfred was okey!', rating: 4)
  review12 = Review.create(nanny: kasey, parent: greg, content: 'Kesey was very rude in one moment and I do not recommend her!', rating: 1)
  review13 = Review.create(nanny: darlene, parent: greg, content: 'Darlene was bad!', rating: 2)
  review14 = Review.create(nanny: catherine, parent: greg, content: 'Catherine was very good and kids love her!', rating: 5)
  review15 = Review.create(nanny: hallie, parent: greg, content: 'Hallie was cold to the kids!', rating: 3)

    puts 'Finished!'

