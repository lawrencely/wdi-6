require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  erb :index
end

get '/morris' do
  erb :morris
end

get '/beverages.json' do
  content_type :json
  [
    {day: 'Friday', coffee: 3, water: 1, beer: 9, whiskey: 9},
    {day: 'Saturday', coffee: 2, water: 1, beer: 10, whiskey: 0},
    {day: 'Sunday', coffee: 1, water: 1, beer: 0, whiskey: 10},
    {day: 'Monday', coffee: 5, water: 1, beer: 2, whiskey: 2},
    {day: 'Tuesday', coffee: 4, water: 1, beer: 4, whiskey: 6},
    {day: 'Wednesday', coffee: 3, water: 1, beer: 3, whiskey: 3},
    {day: 'Thursday', coffee: 4, water: 1, beer: 2, whiskey: 5}
  ].to_json
end