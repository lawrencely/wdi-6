system('clear')
require "pry"

class Birthday
	def initialize
		@today = Date.today
	end

	def congratulations
		@year = ask("what year were you born?")
		@day = ask("What date you were born?")
		@month = ask("What month were you born?")
	end
	def ask(question)
		print "#{question}"
		gets.to_i
	end

	def age(year,month,day)
		d_o_b = Date.new(year,month,day)
		this_year = @today.year
		age_in_years = this_year - 2014
		if @today < Date.new(this_year,month,day)
			age_in_years -= 1
		end
		age_in_years
	end

	def rocky
		congratulations
		age(@year,@month,@day).times do |punch|
			puts "PUNCH!"
		end
	end
	binding.pry
end

