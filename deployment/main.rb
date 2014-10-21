require 'sinatra'
require 'httparty'

get	'/' do
	erb :home
end

get '/results' do
	erb :results
end





