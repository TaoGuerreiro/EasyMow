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

User.create!(
  {
    firstname: 'antoine'
    lastname: 'martin'
    email: 'antoine.martin@gmail.com',
    password: 'secret'
  }
)

User.create!(
  {
    firstname: 'julie'
    lastname: 'laurent'
    email: 'julie.laurent@gmail.com',
    password: 'secret'
  }
)

User.create!(
  {
    firstname: 'edouard'
    lastname: 'lopez'
    email: 'edouart.lopez@gmail.com',
    password: 'secret'
  }
)
User.create!(
  {
    firstname: 'sarah'
    lastname: 'lee'
    email: 'sarah.lee@gmail.com',
    password: 'secret'
  }
)
User.create!(
  {
    firstname: 'pauline'
    lastname: 'riou'
    email: 'pauline.riou@gmail.com',
    password: 'secret'
  }
)

puts 'done'
puts ".....................let's created some tractors...................."

users = User.all

tractor1 = Tractor.create!(
  title: "Tuning Tractor",
  description: "beautiful red tractor",
  price_per_day: 165,
  user_id: users.sample.id
)
photo1 = File.open(Rails.root.join('db/fixtures/tractors/Tractor1.jpg'))
tractor1.photo.attach(io: photo1, filename: 'masse_fergusson.jpg', content_type: 'image/jpg')


tractor2 = Tractor.create!(
  title: "Fenwick",
  description: "Robust and red!",
  price_per_day: 125,
  user_id: users.sample.id
)
photo2 = File.open(Rails.root.join('db/fixtures/tractors/Tractor2.jpg'))
tractor2.photo.attach(io: photo2, filename: 'racer.jpg', content_type: 'image/jpg')

tractor3 = Tractor.create!(
  title: "John Deer",
  description: "The ultime mowing-tractor of John Deer",
  price_per_day: 300,
  user_id: users.sample.id
)
photo3 = File.open(Rails.root.join('db/fixtures/tractors/Tractor3.jpg'))
tractor3.photo.attach(io: photo3, filename: 'john_deer.jpg', content_type: 'image/jpg')


tractor4 = Tractor.create!(
  title: "DIY Mowing-tractor",
  description: "Really good for legs",
  price_per_day: 70,
  user_id: users.sample.id
)
photo4 = File.open(Rails.root.join('db/fixtures/tractors/Tractor4.jpg'))
tractor4.photo.attach(io: photo4, filename: 'diy.jpg', content_type: 'image/jpg')

tractor5 = Tractor.create!(
    title: "Massey Assasin",
  description: "Beautiful black truck",
  price_per_day: 250,
  user_id: users.sample.id
  )
photo5 = File.open(Rails.root.join('db/fixtures/tractors/Tractor5.jpg'))
tractor5.photo.attach(io: photo5, filename: 'masse_assasin.jpg', content_type: 'image/jpg')

tractor6 = Tractor.create!(
  title: "Robotic mowing-tractor",
  description: "Perfect for lazy gardenner",
  price_per_day: 200,
  user_id: users.sample.id
)
photo6 = File.open(Rails.root.join('db/fixtures/tractors/Tractor6.jpg'))
tractor6.photo.attach(io: photo6, filename: 'robot.jpg', content_type: 'image/jpg')

tractor7 = Tractor.create!(
    title: "Huqsvana",
  description: "Good tractor for big garden",
  price_per_day: 160,
  user_id: users.sample.id
  )
photo7 = File.open(Rails.root.join('db/fixtures/tractors/Tractor7.jpg'))
tractor7.photo.attach(io: photo7, filename: 'husqvana.jpg', content_type: 'image/jpg')

tractor8 = Tractor.create!(
  title: "Green Tractor",
  description: "the must Ecologic mowing-tractor",
  price_per_day: 100,
  user_id: users.sample.id
)
photo8 = File.open(Rails.root.join('db/fixtures/tractors/Tractor8.jpg'))
tractor8.photo.attach(io: photo8, filename: 'ecologic.jpg', content_type: 'image/jpg')

tractor9 = Tractor.create!(
  title: "Bernard",
  description: "Old and perfect tractor",
  price_per_day: 90,
  user_id: users.sample.id
)
photo9 = File.open(Rails.root.join('db/fixtures/tractors/Tractor9.jpg'))
tractor9.photo.attach(io: photo9, filename: 'bernard.jpg', content_type: 'image/jpg')

tractor10 = Tractor.create!(
  title: "Racer",
  description: "Perfect for win race",
  price_per_day: 125,
  user_id: users.sample.id
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















