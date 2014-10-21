puts "what is your age?"
age = gets.chomp
age = age.to_i
	if age < 18
		puts "sorry your underage"
	else
		puts "Welcome to adulthood"
	end