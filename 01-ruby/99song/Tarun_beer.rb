
system('clear')
require 'pry'

class Beer

	def self.main_verse(bottles)
		puts "#{bottles} bottles of beer on the wall,"
		puts "#{bottles} bottles of beer,"
		puts "take 1 down and pass it around,"
		puts "#{bottles-1} of beers on the wall!"
		puts " "
	end

	def self.second_last_verse
		puts "2 bottles of beer on the wall,"
		puts "2 bottles of beer,"
		puts "take one down and pass it around,"
		puts "Only 1 bottle of beers on the wall!"
		puts " "
		
	end

	def self.last_verse
		puts "1 bottle of beer on the wall,"
		puts "1 bottle of beer,"
		puts "take one down and pass it around"
		puts "No more bottles of beer on the wall"
		puts " "
	end
	def self.song(bottles=99)
		bottles.downto(2) do |bottles|
			self.main_verse(bottles)
		end
		self.second_last_verse
		self.last_verse
	end
end
class Fixnum
	def bottles_of_beer
		Beer.song(self)
	end
end
binding.pry

#start by declaring class 

