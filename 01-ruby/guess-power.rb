# while true
# 	puts "still running "
# end
# infinite loop above

# finite loop below
# counter = 0

# while counter < 10
# 	puts "still running #{counter}"
# 	counter += 1
# end
# puts "Thank you for using this program"

print "What is 2 to the 16th power? "
guess = gets.to_i

while (guess != 2 ** 16)
	puts "wrong, guess again"

	print "What is 2 to the 16th power? "
	guess = gets.to_i

end

puts "you guess correctly, Maybe you cheated."

