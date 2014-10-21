
# def greet_the_world
# 	puts "hello world"
# end

# greet_the_world

# def add_2_and_3
# 	puts "About to calculate 2 + 3 for you"
# 	sum = 2 + 3
# 	sum
# end


def add(num1,num2)
	puts "num1 has the value : #{ num1 }"
	puts "num2 has the value : #{ num2 }"
	results = num1 + num2
	puts "results is then: #{ results}"
end

results = add(20,13)
puts results

results2 = add(10,10)

results3 = add(1000,99999)


def area(length,width)
	length*width
end

def volume(length,width,height)
	length * width * height
end

surface_area = area(10,30)

capacity = volume(10,20,30)
puts capacity


#### name generator for Ms or Miss

def name_tag_generator(first,last,gender,age)
	if gender == 'f'
		if age < 19
			puts "Miss #{first} #{last}"
		else
			puts "Ms #{first} #{last}"
		end
		else
			puts "Mr #{first } #{last}"
	end


end

name_tag_generator('Craigsy','Cristoffsersen', 'f' , 8)










