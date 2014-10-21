require "sinatra"
require "sinatra/reloader"
require "yahoofinance"

get "/finance" do
	if params[:stock]
		@stock = params[:stock].upcase
		result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)
		@price = result[@stock].lastTrade
		@name = result[@stock].name
		# @average = result[@stock]
	end
	erb :finance
end


