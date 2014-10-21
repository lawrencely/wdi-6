# require'pry'


# def year
# 	normal_year = (1900..2050)
# end

# def leap_year
# 	l_year = (1900..2050/4)
# 	if l_year == true
# 		puts "This is a lear year"
# 	else 
# 		puts "this is not a leap year"
# 	end
# end

# def menu
# 	puts "What year do you wish to check? "
# 	year = gets.chomp

# 	if year == leap_year
# 		puts "this is a leap year"
# 	else
# 		puts "this is a normal year "
# 	end
# end

# def read_selection
# menu
# answer = gets.chomp.downcase
# end

# user_choice = read_selection

# 	if user_choice == leap_year
# 		puts "this is a leap year"
# 		if user_choice == year
# 			puts "this is a normal year"
# 		else 
# 			puts "what the fuck is going on"
# 		end
# 	end

# binding.pry

def ask(question)
	puts question
	gets.chomp.to_i
end

year = ask("what year do you want to check")
if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
	puts "this is a leap year"
else
	puts "it is not a leap year"
end

year



