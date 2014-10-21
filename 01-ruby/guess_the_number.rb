print "what is my number between 1-10?"

number = Random.rand(11)

answer = gets.to_i

while number != answer
	
	puts "sorry try again"

	answer = gets.to_i

end

puts "congratulations"

#### second secret number below working

print "Choose a number between 0 - 1000?"

answer = gets.chomp.to_i

puts "You have chosen 0 - #{answer}"

puts "Guess the number between 0 - #{answer}"

number_guessed = gets.chomp.to_i

correct_answer = Random.rand(0..answer)

while correct_answer != number_guessed

# puts correct_answer

	if number_guessed > correct_answer
	
 		puts "Guess lower"

	elsif number_guessed < correct_answer
		
		puts "guess higher"

	end

	puts "Guess the number between 0 - #{answer}"

	number_guessed = gets.chomp.to_i

end





# # puts "congratulations"

# ####### new secret code method underneath teacher

# #generate secret number
# secret = Random.rand(11)

# puts secret

# #Prompt for a guess
# print "Enter your guess: "

# #read guess from user
# guess = gets.to_i

# #while guess is not equal to secret
# while guess != secret
# 	#tell them theyare wrong
# 	puts "that is incorrect"
# 	print "Enter your guess again: "
# 	guess = gets.to_i
# end

# #congratualte them
# puts "congratulations"

# # print " enter the upper bound"
# # upper_bound = gets.to_i
# #secrect = Random.rand(upper_bound)










