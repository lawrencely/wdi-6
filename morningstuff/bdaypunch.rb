system('clear')
require 'pry'

def ask(question)
	puts question
	gets.chomp.to_i
end

def year
	ask("Year?")
end

def month
	ask("month?")
end

def day
	ask("day")
end


class Birthday

attr_accessor :year, :month, :day

	def initialize()
		@year = year
		@month = month
		@day = day
	end

	def to_s
		"Your Birthday is on the #{ @day } of #{ @month } #{ @year }.
		you are getting #{ @year.to_i - 2014 }"
	end
end


def birthday_punches
	punches = Birthday.new
	actual_punches = 2014 - year
	puts "you get #{actual_punches} punches this year"
end

def menu
	puts "1 = Find out how many birthday punches you are getting?"
	puts "q = Quit"
	puts " Enter your selection "
	puts " "
end

def user_input
	menu
	gets.chomp.downcase
end

menu_option = user_input

until menu_option == 'q'
	case menu_option

	when '1'
		birthday_punches
	end
end


