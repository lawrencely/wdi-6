puts "Welcome to big brother database"

print "what is your first name? "
first = gets.chomp

print "What is your surname? "
surname = gets
# .chomp needs to be put somewhere up or below

puts "Your full name is #{first} #{surname.chomp}."

print "what is your address? "
address = gets.chomp

puts " Your name is #{ first } #{ surname } and your live at #{address}. "
