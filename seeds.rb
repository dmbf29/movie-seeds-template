require 'rest-client'

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
rest_reponse = RestClient.get(url)
response = JSON.parse(rest_reponse.body)

response['results'].each do |movie_hash|
  puts
  p movie_hash
  # create an instance with the hash
end
