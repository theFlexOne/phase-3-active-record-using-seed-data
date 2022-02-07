puts "Seeding database..."

50.times do
  # create a game with random data
  Game.create(
    title: Faker::Game.title,
    genre: Faker::Game.genre,
    platform: Faker::Game.platform,
    price: rand(0..60), # random number between 0 and 60
  )
end

puts "Seeding complete! There are currently #{Game.count} records."
