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

puts "......................Creating 6 users......................."

user1 = User.create!(
    firstname: 'Antoine',
    lastname: 'Martin',
    email: 'antoine.martin@gmail.com',
    password: 'secret',
    address: "44 Rue de la Tullaye, Nantes",
)
avatar1 = File.open(Rails.root.join('db/fixtures/users_avatars/antoine.jpg'))
user1.avatar.attach(io: avatar1, filename: 'antoine.jpg', content_type: 'image/jpg')

user2 = User.create!(
    firstname: 'Julie',
    lastname: 'Laurent',
    email: 'julie.laurent@gmail.com',
    password: 'secret',
    address: "24 Avenue Chanzy, Nantes" ,
)
avatar2 = File.open(Rails.root.join('db/fixtures/users_avatars/julie.jpg'))
user2.avatar.attach(io: avatar2, filename: 'julie.jpg', content_type: 'image/jpg')


user3 = User.create!(
    firstname: 'Florent',
    lastname: 'Guilbaud',
    email: 'florent@gmail.com',
    password: 'secret',
    address: "44230 Saint-Sébastien-sur-Loire
",
)
avatar3 = File.open(Rails.root.join('db/fixtures/users_avatars/florent.jpg'))
user3.avatar.attach(io: avatar3, filename: 'florent.jpg', content_type: 'image/jpg')


user4 = User.create!(
    firstname: 'Sarah',
    lastname: 'Lee',
    email: 'sarah.lee@gmail.com',
    password: 'secret',
    address: "41 Rue de la Tour d'Auvergne, Nantes",
)
avatar4 = File.open(Rails.root.join('db/fixtures/users_avatars/sarah.jpg'))
user4.avatar.attach(io: avatar4, filename: 'sarah.jpg', content_type: 'image/jpg')

user5 = User.create!(
    firstname: 'Pauline',
    lastname: 'Riou',
    email: 'pauline.riou@gmail.com',
    password: 'secret',
    address: "11 Place Alfred Radigois, Nantes",
)
avatar5 = File.open(Rails.root.join('db/fixtures/users_avatars/pauline.jpg'))
user5.avatar.attach(io: avatar5, filename: 'pauline.jpg', content_type: 'image/jpg')

user6 = User.create!(
    firstname: 'Edouard',
    lastname: 'Bherbe',
    email: 'edouard.bherbe@gmail.com',
    password: 'secret',
    address: "rue du douet, 44230 Saint Sébastien sur Loire",
)
avatar6 = File.open(Rails.root.join('db/fixtures/users_avatars/edouard.png'))
user6.avatar.attach(io: avatar6, filename: 'edouard.png', content_type: 'image/png')

puts 'done'
puts ".....................let's created some tractors...................."

users = User.all

tractor1 = Tractor.create!(
  title: "Tuning tractor",
  description: "A beautiful red tractor",
  price_per_day: 165,
  user_id: user1.id,
  consumption: 3,
  speed: 4,
  address: user1.address,
)
photo1 = File.open(Rails.root.join('db/fixtures/tractors/Tractor1.jpg'))
tractor1.photo.attach(io: photo1, filename: 'masse_fergusson.jpg', content_type: 'image/jpg')


tractor2 = Tractor.create!(
  title: "Fenwick",
  description: "Robust and red (obviously)!",
  price_per_day: 125,
  user_id: user1.id,
  consumption: 5,
  speed: 3,
  address: '11 rue la noue bras de fer, 44200 Nantes',
)
photo2 = File.open(Rails.root.join('db/fixtures/tractors/Tractor2.jpg'))
tractor2.photo.attach(io: photo2, filename: 'racer.jpg', content_type: 'image/jpg')


tractor3 = Tractor.create!(
  title: "John Deer",
  description: "The ultime mowing-tractor of John Deer",
  price_per_day: 300,
  user_id: user2.id,
  consumption: 5,
  speed: 4,
  address: user2.address,
)
photo3 = File.open(Rails.root.join('db/fixtures/tractors/Tractor3.jpg'))
tractor3.photo.attach(io: photo3, filename: 'john_deer.jpg', content_type: 'image/jpg')


tractor4 = Tractor.create!(
  title: "DIY Mowing-bike",
  description: "Really good for your legs",
  price_per_day: 30,
  user_id: user3.id,
  consumption: 1,
  speed: 2,
  address: user3.address,
)
photo4 = File.open(Rails.root.join('db/fixtures/tractors/Tractor4.jpg'))
tractor4.photo.attach(io: photo4, filename: 'diy.jpg', content_type: 'image/jpg')


tractor5 = Tractor.create!(
    title: "Massey Assasin",
  description: "Beautiful and sexy black one",
  price_per_day: 250,
  user_id: user2.id,
  consumption: 5,
  speed: 2,
  address: '8 Avenue des Thébaudières, 44880 Saint-Herblain
',
  )
photo5 = File.open(Rails.root.join('db/fixtures/tractors/Tractor5.jpg'))
tractor5.photo.attach(io: photo5, filename: 'masse_assasin.jpg', content_type: 'image/jpg')


tractor6 = Tractor.create!(
  title: "Robotic mowing-tractor",
  description: "Perfect for lazy gardenner",
  price_per_day: 200,
  user_id: user2.id,
  consumption: 2,
  speed: 4,
  address: 'La trocardière 44400 Rezé',
)
photo6 = File.open(Rails.root.join('db/fixtures/tractors/Tractor6.jpg'))
tractor6.photo.attach(io: photo6, filename: 'robot.jpg', content_type: 'image/jpg')


tractor7 = Tractor.create!(
    title: "Huqsvana",
  description: "Good tractor for big garden",
  price_per_day: 160,
  user_id: user4.id,
  consumption: 5,
  speed: 5,
  address: user4.address,
  )
photo7 = File.open(Rails.root.join('db/fixtures/tractors/Tractor7.jpg'))
tractor7.photo.attach(io: photo7, filename: 'husqvana.jpg', content_type: 'image/jpg')


tractor8 = Tractor.create!(
  title: "Green Tractor",
  description: "the must Ecologic mowing-tractor",
  price_per_day: 100,
  user_id: user4.id,
  consumption: 1,
  speed: 1,
  address: 'Chemin de la justice, 44300 Nantes',
)
photo8 = File.open(Rails.root.join('db/fixtures/tractors/Tractor8.jpg'))
tractor8.photo.attach(io: photo8, filename: 'ecologic.jpg', content_type: 'image/jpg')

tractor9 = Tractor.create!(
  title: "Bernard",
  description: "Old and perfect tractor",
  price_per_day: 90,
  user_id: user6.id,
  consumption: 5,
  speed: 3,
  address: user6.address,
)
photo9 = File.open(Rails.root.join('db/fixtures/tractors/Tractor9.jpg'))
tractor9.photo.attach(io: photo9, filename: 'bernard.jpg', content_type: 'image/jpg')

tractor10 = Tractor.create!(
  title: "Racer",
  description: "Perfect for win race",
  price_per_day: 125,
  user_id: user5.id,
  consumption: 5,
  speed: 1,
  address: user5.address,
)
photo10 = File.open(Rails.root.join('db/fixtures/tractors/Tractor10.jpg'))
tractor10.photo.attach(io: photo10, filename: 'racer.jpg', content_type: 'image/jpg')


puts 'done'
puts "...................let's created some bookings..................."

tractors = Tractor.all
users = User.all


starting_date = Date.parse("20-03-2020")
ending_date = Date.parse("23-03-2020")
  Booking.create!(
    {
      status: "pending",
      user_id: user1.id,
      tractor_id: tractor4.id,
      starting_date: starting_date,
      ending_date: ending_date,
      total_price: (ending_date - starting_date).to_i * tractor4.price_per_day
    }
  )


starting_date = Date.parse("20-03-2020")
ending_date = Date.parse("23-03-2020")
Booking.create!(
  {
    status: "pending",
    user_id: user2.id,
    tractor_id: tractor4.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor4.price_per_day
  }
)

starting_date = Date.parse("10-04-2020")
ending_date = Date.parse("23-04-2020")

tractor = tractors.sample
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

tractor = tractors.sample
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

tractor = tractors.sample
Booking.create!(
  {
    status: "pending",
    user_id: User.last.id,
    tractor_id: Tractor.first.id,
    starting_date: starting_date,
    ending_date: ending_date,
    total_price: (ending_date - starting_date).to_i * tractor.price_per_day
  }
)

puts 'done'















