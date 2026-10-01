require 'faker'

puts "Deleting all Movies..."
Movie.destroy_all

100.times do
  puts "Creating movie..."
  Movie.create!(
    title: Faker::Movie.unique.title,
    overview: Faker::Lorem.paragraph(sentence_count: 3)
  )
end

puts "Created #{Movie.count} movies"

puts "Deleting all Lists..."
List.destroy_all

10.times do
  list_possible_names = [
  "#{Faker::Book.genre} Movies", # ex. Mystery Movies
  "#{Faker::Adjective.positive.capitalize} Picks", # ex. Kind Picks
  "#{Faker::Adjective.negative.capitalize} Films" # ex. Creepy Films
]
  puts "Creating lists..."
  List.create!(
    name: list_possible_names[rand(0..2)]
  )
end

puts "Created #{List.count} lists"
