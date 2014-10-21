#flow control

if 2 + 2 == 4
	puts "Maths is ok"
end

unless 2 + 2 ==5
	puts "Maths is still okay"
end
 #if and unless are a pair
# one liners and dont need end
 puts "Maths is ok " if 2 + 2 == 4
 puts "Maths is ok " unless 2 + 2 == 5

#using while and looping
 counter = 10
 while <= 0
 		puts "#{counter}..."
 		counter -= 1
 	end


 	puts "Blast off!"

 puts "still running" while true

#methods
 def say_hello
 	puts "hello"
 	
 end

 say_hello

#customize it
def say_hello_to(name)
	puts "say hello to #{name} please. "
end

say_hello_to('pope boniface xvii')

def add10(n)
	n + 10
end

puts add10(55)

results = add10(55)

results = add10(1001)
puts results

add10( add10( add10(1) ) )

# << add number on the back of array e.g. << 10 << 11 << 12

