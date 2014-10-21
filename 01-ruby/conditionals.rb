# Equality and inequality
0 == 1
1 != 0
5 < 9
1.1 >= 1

#Boolean operators
true && true  # "and"
true || false # "or"

!true # negation
!!!false # being a jerk

if true
	puts "Something is true"
end

if (2 + 2) == 5
	puts "uh oh"
end

if (4 + 3) == 8
	puts "Oh oh"
else 
	puts "Mathematics is looking reasonable in Ruby"
end

marx_brother = 'groucho'
if marx_brother != 'groucho'
	puts "where the hell is groucho"
end
# both top and bottom mean the same thing bottom is easier though
unless marx_brother == 'groucho'
	puts "Where the hell is groucho?"
end

grade = 'B'
if grade == 'A'
	puts 'Well done you massive nerd!'
elsif grade == 'B'
	puts 'Underacheiver'
elsif grade == 'C'
	puts 'Pick it up'
	
else
	puts 'too bad'
end

case grade
  when 'A'
  	puts 'Well done you massive nerd'
  when 'B'
  	puts 'Underacheiver'
  when 'C'
  	puts 'Pick it up'
  else
  	puts 'too bad'
end
  	
	

