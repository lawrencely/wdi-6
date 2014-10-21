require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"welcome to the home page"
end

get '/hello'  do
	"OMFG hello  world from sinatra"
end

get '/goodbye' do
	"goodbye cruel world"
end

get '/lawrence' do
	"hi me"
end

#below is an infinite amount of URLS
#above is limited to a single URL

get '/hi/:name' do
	"Hello #{params[:name]}"
end

get '/hi/:first/:last' do
	"your first name is #{params[:first]} and your last name is #{params[:last]}. "
end

get '/hi/:first/:last/:age' do
	"your first name is #{params[:first]} and your last name is #{params[:last]} and you have lived on this earth for #{params[:age]} years. "
end

get '/calc/multiply/:x/:y' do
	result = params[:x].to_f * params[:y].to_f
	"result is #{ result }"
end
