
puts "Cleans DB..."
User.destroy_all
Dinosaur.destroy_all

puts "Adds 5 new User records..."
5.times do
  user = User.create(name: Faker::FunnyName.name,
    password: 'valid_password',
    password_confirmation: 'valid_password',
    email: Faker::Internet.email )
end

puts "Adds 10 new Dinosaur records..."
10.times do
  dinosaur = Dinosaur.create(
    name: Faker::FunnyName.name,
    species: Faker::Games::Pokemon.name,
    age: (50..200).to_a.sample,
    gender: Faker::Gender.binary_type,
    food: Faker::Food.vegetables,
    habits: Faker::Lorem.words,
    policy: Faker::Color.color_name,
    location: Faker::Nation.capital_city,
    description: Faker::Hacker.say_something_smart,
    price: (50..500).to_a.sample,
    user: User.last
     )
end

