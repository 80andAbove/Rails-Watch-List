# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'
require 'open-uri'
Movie.destroy_all
# List.destroy_all

# puts "Generating List"
# 5.times do 
#   List.create(
#     name: Faker::Name.name
#   )
# end
# puts "Generating List Completed"

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

puts "Generating Movies"
response['results'].each do |movie_hash|
  # create an instance with the hash
  Movie.create!(
    title: movie_hash['title'],
    overview: movie_hash['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'],
    rating: movie_hash['vote_average']
  )
end
puts "Generating Movies Completed"
