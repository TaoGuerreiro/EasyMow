# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Cleaning table..."
Booking.destroy_all
Tractor.destroy_all
User.destroy_all
puts "Coucou les copains"

puts "......................Creating 10 users......................."

user1 = User.create!(
    firstname: 'Antoine',
    lastname: 'Martin',
    email: 'antoine.martin@gmail.com',
    password: 'secret',
    address: "44 Rue de la Tullaye, Nantes",
)
p user1
avatar1 = File.open(Rails.root.join('db/fixtures/users_avatars/antoine.jpg'))
p avatar1
user1.avatar.attach(io: avatar1, filename: 'antoine.jpg', content_type: 'image/jpg')

user2 = User.create!(
    firstname: 'Julie',
    lastname: 'Laurent',
    email: 'julie.laurent@gmail.com',
    password: 'secret',
    address: "24 Avenue Chanzy, Nantes" ,
)
avatar2 = File.open(Rails.root.join('db/fixtures/users_avatars/antoine.jpg'))
user2.avatar.attach(io: avatar2, filename: 'julie.jpg', content_type: 'image/jpg')


user3 = User.create!(
    firstname: 'Edouard',
    lastname: 'Lopez',
    email: 'edouart.lopez@gmail.com',
    password: 'secret',
    address: "3 Passage Louis Lévesque, Nantes",
)
avatar3 = File.open(Rails.root.join('db/fixtures/users_avatars/antoine.jpg'))
user3.avatar.attach(io: avatar3, filename: 'edouard.jpg', content_type: 'image/jpg')


user4 = User.create!(
    firstname: 'Sarah',
    lastname: 'Lee',
    email: 'sarah.lee@gmail.com',
    password: 'secret',
    address: "41 Rue la Tour d'Auvergne, Nantes",
)
avatar4 = File.open(Rails.root.join('db/fixtures/users_avatars/antoine.jpg'))
user4.avatar.attach(io: avatar4, filename: 'sarah.jpg', content_type: 'image/jpg')

user5 = User.create!(
    firstname: 'Pauline',
    lastname: 'Riou',
    email: 'pauline.riou@gmail.com',
    password: 'secret',
    address: "11 Place Alfred Radigois, Nantes",
)
avatar5 = File.open(Rails.root.join('db/fixtures/users_avatars/antoine.jpg'))
user5.avatar.attach(io: avatar5, filename: 'pauline.jpg', content_type: 'image/jpg')

puts 'done'
puts ".....................let's created some tractors...................."

users = User.all

tractor1 = Tractor.create!(
  title: "Tuning Tractor",
  description: "beautiful red tractor",
  price_per_day: 165,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo1 = File.open(Rails.root.join('db/fixtures/tractors/Tractor1.jpg'))
tractor1.photo.attach(io: photo1, filename: 'masse_fergusson.jpg', content_type: 'image/jpg')


tractor2 = Tractor.create!(
  title: "Fenwick",
  description: "Robust and red!",
  price_per_day: 125,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo2 = File.open(Rails.root.join('db/fixtures/tractors/Tractor2.jpg'))
tractor2.photo.attach(io: photo2, filename: 'racer.jpg', content_type: 'image/jpg')

tractor3 = Tractor.create!(
  title: "John Deer",
  description: "The ultime mowing-tractor of John Deer",
  price_per_day: 300,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo3 = File.open(Rails.root.join('db/fixtures/tractors/Tractor3.jpg'))
tractor3.photo.attach(io: photo3, filename: 'john_deer.jpg', content_type: 'image/jpg')


tractor4 = Tractor.create!(
  title: "DIY Mowing-tractor",
  description: "Really good for legs",
  price_per_day: 70,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo4 = File.open(Rails.root.join('db/fixtures/tractors/Tractor4.jpg'))
tractor4.photo.attach(io: photo4, filename: 'diy.jpg', content_type: 'image/jpg')

tractor5 = Tractor.create!(
    title: "Massey Assasin",
  description: "Beautiful black truck",
  price_per_day: 250,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
  )
photo5 = File.open(Rails.root.join('db/fixtures/tractors/Tractor5.jpg'))
tractor5.photo.attach(io: photo5, filename: 'masse_assasin.jpg', content_type: 'image/jpg')

tractor6 = Tractor.create!(
  title: "Robotic mowing-tractor",
  description: "Perfect for lazy gardenner",
  price_per_day: 200,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo6 = File.open(Rails.root.join('db/fixtures/tractors/Tractor6.jpg'))
tractor6.photo.attach(io: photo6, filename: 'robot.jpg', content_type: 'image/jpg')

tractor7 = Tractor.create!(
    title: "Huqsvana",
  description: "Good tractor for big garden",
  price_per_day: 160,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
  )
photo7 = File.open(Rails.root.join('db/fixtures/tractors/Tractor7.jpg'))
tractor7.photo.attach(io: photo7, filename: 'husqvana.jpg', content_type: 'image/jpg')

tractor8 = Tractor.create!(
  title: "Green Tractor",
  description: "the must Ecologic mowing-tractor",
  price_per_day: 100,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo8 = File.open(Rails.root.join('db/fixtures/tractors/Tractor8.jpg'))
tractor8.photo.attach(io: photo8, filename: 'ecologic.jpg', content_type: 'image/jpg')

tractor9 = Tractor.create!(
  title: "Bernard",
  description: "Old and perfect tractor",
  price_per_day: 90,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo9 = File.open(Rails.root.join('db/fixtures/tractors/Tractor9.jpg'))
tractor9.photo.attach(io: photo9, filename: 'bernard.jpg', content_type: 'image/jpg')

tractor10 = Tractor.create!(
  title: "Racer",
  description: "Perfect for win race",
  price_per_day: 125,
  user_id: users.sample.id,
  consumption: rand(1..5),
  speed: rand(1..5)
)
photo10 = File.open(Rails.root.join('db/fixtures/tractors/Tractor10.jpg'))
tractor10.photo.attach(io: photo10, filename: 'racer.jpg', content_type: 'image/jpg')


puts 'done'
puts "...................let's created some bookings..................."

tractors = Tractor.all
tractor = tractors.sample
starting_date = Date.parse("20-03-2020")
ending_date = Date.parse("23-03-2020")

Booking.create!(
  {
    status: "pending",
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
    status: "pending",
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
    status: "pending",
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
    status: "pending",
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
    status: "pending",
    user_id: users.sample.id,
    tractor_id: tractor.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

puts 'done'















