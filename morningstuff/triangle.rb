
# def triangle(a,b,c)
# 	if (a == b ) && ( b == c )
# 		puts 'equilatral'
# 		elsif 
# 			a > b && b < c && (a != c)
# 			puts 'scalene'
# 		elsif
# 			(a == b) || (b == c) || (c == a) && (b > c) || (b > a) || (c > a)
# 			puts 'isoscelese'
# 		else
# 			puts "This is not a triangle you maggot!"
# 		end
# end

# #good effort, fucked it up!

# triangle(1,1,1)
# triangle(10,5,8)
# triangle(2,3,2)
# triangle(1,2,3)

system('clear')
require "pry"

class Array
	return if self.length != 3
	@one = self[0]
	@two = self[1]
	@three = self[2]

	if @one == @two && @one != @three && @one
		return 'isoscelese'
	elsif @two == @three && @one != @three
		return 'isoscelese'
	else
			