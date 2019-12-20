require 'open-uri'

puts "Cleans DB..."
Booking.destroy_all
Dinosaur.destroy_all
User.destroy_all

###########
# user seed
###########

user1 = User.create({
  name: 'Lala',
  email: 'lala@example.com',
  photo: 'lala.gif',
  password: 123123
})

user2 = User.create({
  name: 'Jane',
  email: 'jane@example.com',
  photo: 'jane.jpg',
  password: 123123
})

puts "Users seeded! #{ User.count}"


  dino = Dinosaur.new(
    name: 'Inggrid',
    species: 'Iguanodon',
    age: 250,
    gender: 'Female',
    food: 'Fresh green leaves',
    habits: 'Sleep under the stars',
    location: 'Berlin',
    description: 'No need breakfast.',
    price: 550,
    photo: 'https://i.ebayimg.com/images/g/CBMAAMXQuCdTfp4K/s-l300.jpg',
    user: user1
  )
  dino.save

  dino1 = Dinosaur.new(
    name: 'Alice',
    species: 'Allosaurus',
    age: 250,
    gender: 'Female',
    food: 'Tofu',
    habits: 'Drink milk at sunset',
    location: 'Berlin',
    description: 'Playful, easy to take care and love playing swing.',
    price: 170,
    photo: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c8b3ceb6-e094-45bb-a4e5-4048568bb2bc/d4i65ku-51b2bbdd-996f-44e8-8194-1935eaf1cec4.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwic3ViIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsImF1ZCI6WyJ1cm46c2VydmljZTpmaWxlLmRvd25sb2FkIl0sIm9iaiI6W1t7InBhdGgiOiIvZi9jOGIzY2ViNi1lMDk0LTQ1YmItYTRlNS00MDQ4NTY4YmIyYmMvZDRpNjVrdS01MWIyYmJkZC05OTZmLTQ0ZTgtODE5NC0xOTM1ZWFmMWNlYzQuanBnIn1dXX0.4cXDhmUV9ItXV9ekwoOKJAG9N0gHwzWlp7RS7JYxL8Y',
    user: user1
  )
  dino1.save

  dino2 = Dinosaur.new(
    name: 'Brontu',
    species: 'Brontosaurus',
    age: 250,
    gender: 'Female',
    food: 'Pickle',
    habits: 'Read a book',
    location: 'Berlin',
    description: 'Love sleeping under sofa.',
    price: 320,
    photo: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c8b3ceb6-e094-45bb-a4e5-4048568bb2bc/d4i65ku-51b2bbdd-996f-44e8-8194-1935eaf1cec4.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwic3ViIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsImF1ZCI6WyJ1cm46c2VydmljZTpmaWxlLmRvd25sb2FkIl0sIm9iaiI6W1t7InBhdGgiOiIvZi9jOGIzY2ViNi1lMDk0LTQ1YmItYTRlNS00MDQ4NTY4YmIyYmMvZDRpNjVrdS01MWIyYmJkZC05OTZmLTQ0ZTgtODE5NC0xOTM1ZWFmMWNlYzQuanBnIn1dXX0.4cXDhmUV9ItXV9ekwoOKJAG9N0gHwzWlp7RS7JYxL8Y',
    user: user2
  )
  dino2.save

puts "Dinos seeded! #{ Dinosaur.count}"
