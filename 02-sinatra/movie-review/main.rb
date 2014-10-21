require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get	'/' do
	if params['movie_title']
		@title = params['movie_title'].sub(' ','+')
		movie_results = HTTParty.get("http://www.omdbapi.com/?i=&t=#{ @title }") # Fetch the movie data
		movie = JSON.parse movie_results # Convert the raw data into a Ruby hash
		@poster = movie['Poster']
		@plot = movie['Plot']
		@title = movie['Title']
		@actors = movie['Actors']
		@director = movie['Director']


	end
	erb :home
end
