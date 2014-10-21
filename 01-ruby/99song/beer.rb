
class Number
	attr_accessor :num, :finish

	def initialize(num, finish)
		@num = 99
		@finish = ""
		
	end

	def to_s

		puts "#{@num} bottles of beer on the wall,"
		puts "#{@num} bottles of beer,"
		puts "take 1 down and pass it around,"
		puts "#{@num} of beers on the wall!"
	end

	def beer_count
		#@num = (99 - 1)
			while @num > 0
				puts self
				@num -= 1

		end
	end
end

numbe = Number.new(99,"finish") 
	numbe.beer_count

def beer_count
	@num = (99 - 1)
		while beer_count > 0
			puts to_s
		end
	end


	




