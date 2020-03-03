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
  photo: "https://static.megavert.fr/44317-large_default/sxe218he105-tracteur-tondeuse-autoportee-iseki-bac-arriere.jpg",
  title: "Masse Fergusson",
  description: "Joli tracteurs",
  price_per_day: 165,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://media.paruvendu.fr/image/tracteur-tondeuse-kubota/WB16/1/8/WB161808331_1.jpeg",
  title: "Renault",
  description: "Tracteur rouge",
  price_per_day: 125,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://www.oleonmotoculture.fr/286-large_default/tracteur-tondeuse-kubota-g26hd.jpg",
  title: "Kubota",
  description: "Old school",
  price_per_day: 80,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://www.jardins-loisirs.com/12620-large_default/tracteur-tondeuse-rt-4082-stihl.jpg",
  title: "Stihl",
  description: "Vitesse de folie",
  price_per_day: 200,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://kckdata.io/i/1ad/8b1/714/tracteur-tondeuse-honda-hf2417-1-metre-2-cm-1_800x430.jpg",
  title: "Honda",
  description: "Entrée de gamme",
  price_per_day: 110,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://kckdata.io/i/1ad/8b1/714/tracteur-tondeuse-honda-hf2417-1-metre-2-cm-1_800x430.jpg",
  title: "diy",
  description: "Fait mains",
  price_per_day: 50,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://kckdata.io/i/1ad/8b1/714/tracteur-tondeuse-honda-hf2417-1-metre-2-cm-1_800x430.jpg",
  title: "Ecologique",
  description: "La tondeuse la plus écologique",
  price_per_day: 60,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://kckdata.io/i/1ad/8b1/714/tracteur-tondeuse-honda-hf2417-1-metre-2-cm-1_800x430.jpg",
  title: "Compétition",
  description: "Parfait pour les tracteurs tondeuses cross",
  price_per_day: 200,
  user_id: users.sample.id
  }
)

Tractor.create!(
  {
  photo: "https://kckdata.io/i/1ad/8b1/714/tracteur-tondeuse-honda-hf2417-1-metre-2-cm-1_800x430.jpg",
  title: "Honda",
  description: "Entrée de gamme",
  price_per_day: 110,
  user_id: users.sample.id
  }
)
Tractor.create!(
  {
  photo: "https://kckdata.io/i/1ad/8b1/714/tracteur-tondeuse-honda-hf2417-1-metre-2-cm-1_800x430.jpg",
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















