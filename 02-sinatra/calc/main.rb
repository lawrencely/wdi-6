require "sinatra"
require "sinatra/reloader"

get '/calc' do
	@first = params[:first].to_f
	@second = params[:second].to_f

	@result = case params[:operator]
		when "+" then @result = @first + @second
		when "-" then @result = @first - @second
		when "/" then @result = @first / @second
		when "*" then @result = @first * @second
	end
	erb :calc
end

get '/about' do
	erb:about
end

# get '/calc/multiply/:x/:y' do
# 	@result = params[:x].to_f * params[:y].to_f
# 	erb :calc
# end

# get '/calc/add/:x/:y' do
# 	@result = params[:x].to_f + params[:y].to_f
# 	erb :calc
# end