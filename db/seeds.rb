puts "Deleting all Movies..."
Movie.destroy_all
puts "Deleting all Lists..."
List.destroy_all

require 'uri'
require 'net/http'
require 'json'

uri = URI.parse("https://tmdb.lewagon.com/movie/top_rated")
response = Net::HTTP.get_response(uri)
data = JSON.parse(response.body)
movies = data["results"]

movies.each do |movie|
  puts "Creating #{movie["title"]} movie..."
  Movie.create!(
    title: movie["title"],
    overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie["poster_path"]}"
  )
end

puts "Created #{Movie.count} movies!"
