def first_menu
	puts "Would you like use a simple or complicated Calculator (simp, comp) ?"
	gets.chomp
	
end

def menu
	puts "Here is the Menu"
	puts "1. Add"
	puts "2. Subtract"
	puts "3. Divide"
	puts "4. Multiply"
	puts " Calculator Functionality"
	puts "5. Square Root"
	puts "6. Exponentials"
	puts "q. Quit"
	print "Enter your selection: "
end

def complicated_calculator
	puts "5. Square Root"
	puts "6. Exponentials"
	puts "q. Quit"
	prints "Enter your selection: "
	
end

def read_second_menu_selection
	read_second
	gets.chomp
	
end

def read_selection
	menu
	gets.chomp
end

first_menu =


user_choice = read_selection

while user_choice != 'q'
	puts "I see"
		if user_choice == simp
			puts menu
		end

		if user_choice == comp
			puts complicated_calculator
		end
		if user_choice == '1'
			puts "First number to add? "
				one_add = gets.chomp.to_i
			puts "Second number to add? "
				two_add = gets.chomp.to_i
				result_add = one_add + two_add
			puts "Your answer is #{result}."
		end

		if user_choice == '2'
			puts "First number to Subtract? "
				one_subtract = gets.chomp.to_i
			puts "Second number to add? "
				two_subtract = gets.chomp.to_i
				result_subtract = one_subtract - two_subtract
			puts "Your answer is #{result_subtract}."
		end

		if user_choice == '3'
			puts "First number to Divide? "
				one_divide = gets.chomp.to_i
			puts "Second number to add? "
				two_divide = gets.chomp.to_i
				result_divide = one_divide / two_divide
			puts "Your answer is #{result_divide}."
		end
		if user_choice == '4'
			puts "First number to Multiply? "
				one_multiply = gets.chomp.to_i
			puts "Second number to add? "
				two_multiply = gets.chomp.to_i
				result_multiply = one_multiply * two_multiply
			puts "Your answer is #{result_multiply}."
		end
		if user_choice == 'q' then puts "goodbye"
		end
		if user_choice == '5'
			puts "What is the number you wish to square root? "
				one_root = gets.chomp.to_i
				result_root = Math.sqrt(one_root)
			puts "Your answer is #{result_root}."
		end
		if user_choice == '6'
			puts "Base Number ? "
				one_exponentials = gets.chomp.to_i
			puts "To the power of ? "
				two_exponentials = gets.chomp.to_i
				result_exponentials = one_exponentials **two_exponentials
			puts "Your answer is #{result_exponentials}."
		end
	
	




	user_choice = read_selection
end

