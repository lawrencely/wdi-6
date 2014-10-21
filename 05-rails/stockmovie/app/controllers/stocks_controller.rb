class StocksController < ApplicationController
	def index
	end
	def lookup
		stock_data = "<%= params[:symbol] %>"
	end
end