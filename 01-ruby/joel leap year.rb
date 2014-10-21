require 'pry'

class Year
	def initialize(year)
	@year = year
	end

	def leap?
	# this quote should explain the below
	@year % 4 == 0 && ((@year % 100 != 0) || (@year % 400 == 0))
	#same things divides_by_4 && (does_not_divide_by_100 || divides_by_400 )
end
def divides_by_4
	(@year % 4) == 0

end

def does_not_divide_by_100
	@year % 100 != 0
end

def divides_by_400
	@year % 400 == 0
end

# Year.new(1996).leap?
# binding.pry

#monkey patching

class fixnum
	def leap_year?
		Year.new(self).leap?
	end
end

#self means the opbject im dealing with

3000.times do |y|
	year = Year.new(y)
	puts "#{ y } is a leap year: #{ year.leap? }. "
end