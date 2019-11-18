
puts "Cleans DB..."
User.destroy_all

puts "Adds 5 new User records..."
5.times do
  user = User.create(name: Faker::FunnyName.name,
    password: 'valid_password',
    password_confirmation: 'valid_password',
    email: Faker::Internet.email )
end

puts "Adds 10 new Dinosaur records..."
10.times do
  user = Dinosaur.create(
    name: Faker::FunnyName.name,
    species: Faker::Games::Pokemon.name,
    age: Faker::Number.number,
    gender: Faker::Gender.binary_type,
    food: Faker::Food.vegetables,
    habits: Faker::Lorem.words,
    policy: Faker::Color.color_name,
    location: Faker::Nation.capital_city,
    description: Faker::Hacker.say_something_smart,
    price: Faker::Number.number,
    user: User.last
     )
end


