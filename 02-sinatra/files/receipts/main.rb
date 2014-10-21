db = File.new('database.txt', 'a+')

require "pry"
require "sinatra"
require "sinatra/reloader"
t
get '/' do 
	erb :new
end

post '/' do
	erb :receipts
end

post '/all' do



