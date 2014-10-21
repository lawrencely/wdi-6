require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	erb :forms
end

get '/about' do
	erb :about
end

get '/faq' do
	erb :FAQ
end

# get '/process' do
# 	@reults = "[#{params.['hotdog_count']} #{ params['hotdogs']} ]hotdogs consume on #{params['start_date']}"
# 	erb @results
# end

get '/search_results' do
	erb "you have searched for #{ params['search_string']}"
	end

