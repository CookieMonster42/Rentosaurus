
puts "Cleans DB..."
Dinosaur.destroy_all
User.destroy_all

puts "Adds 10 new User records..."
5.times do
  user = User.create!(
    name: Faker::FunnyName.name,
    password: 'valid_password',
    password_confirmation: 'valid_password',
    email: Faker::Internet.email
  )

  puts "Adds 5 new Dinosaur records..."
  2.times do
    dino = Dinosaur.create!(
      name: Faker::FunnyName.name,
      species: Faker::Games::Pokemon.name,
      age: rand(1000),
      gender: Faker::Gender.binary_type,
      food: Faker::Food.vegetables,
      habits: Faker::Lorem.words,
      policy: Faker::Color.color_name,
      location: Faker::Nation.capital_city,
      description: Faker::Hacker.say_something_smart,
      price: rand(1000),
      user: user
  )
  end
end



