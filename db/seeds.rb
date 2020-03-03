# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning table..."
User.destroy_all
Tractor.destroy_all
Booking.destroy_all
puts "Coucou les copains"

puts "......................Creating 10 users......................."

User.create!(
  {
    email: 'antoine.martin@gmail.com',
    password: 'secret'
  }
)

User.create!(
  {
    email: 'julie.laurent@gmail.com',
    password: 'secret'
  }
)

User.create!(
  {
    email: 'edouart.lopez@gmail.com',
    password: 'secret'
  }
)
User.create!(
  {
    email: 'sarah.lee@gmail.com',
    password: 'secret'
  }
)
User.create!(
  {
    email: 'pauline.riou@gmail.com',
    password: 'secret'
  }
)

puts 'done'
puts ".....................let's created some tractors...................."

users = User.all

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor1.jpg')),
  title: "Masse Fergusson",
  description: "Joli tracteurs",
  price_per_day: 165,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor2.jpg')),
  title: "Renault",
  description: "Tracteur rouge",
  price_per_day: 125,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor3.jpg')),
  title: "Kubota",
  description: "Old school",
  price_per_day: 80,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor4.jpg')),
  title: "Stihl",
  description: "Vitesse de folie",
  price_per_day: 200,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor5.jpg')),
  title: "Honda",
  description: "Entrée de gamme",
  price_per_day: 110,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor6.jpg')),
  title: "diy",
  description: "Fait mains",
  price_per_day: 50,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor7.jpg')),
  title: "Ecologique",
  description: "La tondeuse la plus écologique",
  price_per_day: 60,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor8.jpg')),
  title: "Compétition",
  description: "Parfait pour les tracteurs tondeuses cross",
  price_per_day: 200,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor9.jpg')),
  title: "Honda",
  description: "Entrée de gamme",
  price_per_day: 110,
  user_id: users.sample.id
  }
)
Tractor.create!(
  {
  photo: File.open(Rails.root.join('db/fixtures/tractors/tractor10.jpg')),
  title: "Honda",
  description: "Entrée de gamme",
  price_per_day: 110,
  user_id: users.sample.id
  }
)


puts 'done'
puts "...................let's created some bookings..................."

tractors = Tractor.all
tractor = tractors.sample
starting_date = Date.parse("20-03-2020")
ending_date = Date.parse("23-03-2020")

Booking.create!(
  {
    status: "true",
    user_id: users.sample.id,
    tractor_id: tractor.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

starting_date = Date.parse("20-03-2020")
ending_date = Date.parse("23-03-2020")

Booking.create!(
  {
    status: "true",
    user_id: users.sample.id,
    tractor_id: tractor.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

starting_date = Date.parse("10-04-2020")
ending_date = Date.parse("23-04-2020")

Booking.create!(
  {
    status: "true",
    user_id: users.sample.id,
    tractor_id: tractor.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

starting_date = Date.parse("24-05-2020")
ending_date = Date.parse("30-05-2020")

Booking.create!(
  {
    status: "true",
    user_id: users.sample.id,
    tractor_id: tractor.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

starting_date = Date.parse("20-03-2020")
ending_date = Date.parse("23-03-2020")

Booking.create!(
  {
    status: "false",
    user_id: users.sample.id,
    tractor_id: tractor.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

puts 'done'















