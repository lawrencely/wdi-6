db = File.new('database.txt', 'a+')

print "input person and save to a file (y/n)"
response = gets.chomp.downcase

while response == 'y'
	print "Enter name, age, gender: "
	input = gets.chomp
	db.puts(input)

	print "Input person and save to a file (y/n)"
	response = gets.chomp.downcase
end

db.close #dont forget to close your file

class Person
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

	def to_s
		"#{name} is #{age} years old and #{ gender }. "
	end
end

db= File.new('database.txt','r')
people = []

db.each do |line|
	person_array = line.chomp.split(',') # can do puts line.upcase or downcase or whatever
	person = Person.new person_array[0], person_array[1], person_array[2] #split turned the string into an array
	people << person
end
db.close # don't forget

people.each do |person|
	puts person
end

require 'pry'
binding.pry

