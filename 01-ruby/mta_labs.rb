
# def welcome
# 	puts "Welcome to New York, which train line are you on? n l 6"
# 	gets.chomp
# end

# def read_selection
# 	welcome
# 	gets.chomp
# end


# n_line = {
# 	:1n => 'Time Square',
# 	:2n => '34th',
# 	:3n => '28th_n',
# 	:4n => '23rd_n',
# 	:5n => '22nd',
# 	:6n => 'Union Square',
# 	:7n => '8th_n'
# }

# l_line = {
# 	:1l => '8th_l',
# 	:2l => '6th',
# 	:3l => 'Union Square',
# 	:4l => '3rd',
# 	:5l => '1st'
# }

# 6_line = {
# 	:16 => 'Grand Central',
# 	:26 => '33rd',
# 	:36 => '28th_6',
# 	:46 => '23rd_6',
# 	:56 => 'Union Square',
# 	:66 => 'Astor Place'
# }
# system('clear')

# puts "What Line are you on? 'N'/'L'/'6'"
# 	line_answer = gets.chomp.downcase

# puts "which station are you at?"
# station_answer = gets.chomp

# puts "Which line are you heading to?"
# second_line = gets.chomp

# puts "Which station do you want to get off?"
# destination_answer = gets.chomp





# a_n_line = ['Times Square', '34th','28th_n','23rd_n', 'Union Square', '8th_n']

# a_l_line = ['8th_l','6th', 'Union Square', '3rd', '1st']

# a_6_line = ['Grand Central', '33rd','28th_6', '23rd_6', 'Union Square','Astor Place']

# #get from time square to 22nd

# # start at time square and get to 8th-n

# intersection = ['Times Square', '34th','28th_n','23rd_n', 'Union Square', '8th_n'] & ['8th_l','6th', 'Union Square', '3rd', '1st'] & ['Grand Central', '33rd','28th_6', '23rd_6', 'Union Square','Astor Place']


# # if line_answer != second_line
# # 	puts "The station is currently under maintenence, please take a cab"
# # end

# # puts a_n_line.index(answer) + a_n_line.index(answer2)

# if line_answer == 'n' && second_line == 'n'
# 	puts a_n_line.index(station_answer).abs + a_n_line.index(destination_answer).abs
# end

# if line_answer == 'l' && second_line == 'l'
# puts a_l_line.index(station_answer).abs + a_l_line.index(destination_answer).abs
# end

# if line_answer == '6' && second_line '6'
# 	puts a_6_line.index(station_answer).abs + a_6_line.index(destination_answer).abs
# end

# # if line_answer != second_line
# # 	puts "The station is currently under maintenence, please take a cab"
# # end

# # if line_answer == 'n' && second_line == 'l'
# # 	puts a_n_line.index(station_answer).abs + a_l_line.index(destination_answer).abs
# # end

# if line_answer == 'n' && second_line == 'l'
# 	puts a_n_line.index(station_answer) + a_n_line.index("Union Square") + a_l_line.index(destination_answer) - a_l_line("Union Square").abs
# end



require 'pry'
system('clear')
a_n_line = ["Times Square", "34th", "28th_n", "23rd", "$Union Square", "8th_n"]
a_l_line = ["8th_l", "6th", "$Union Square", "3rd", "1st"]
a_6_line = ["Grand Central", "33rd", "28th_6", "23rd", "$Union Square", "Astor Place"]


puts "What line are you on? N/L/6 ?"
line_answer = gets.chomp.downcase

puts "What station are you at?" # List all available options
station_answer = gets.chomp

puts "What line are you heading to?"
second_line = gets.chomp

puts "Which station do you want to get off?"
destination_answer = gets.chomp

$Union Square == 0


if line_answer == 'n' && second_line == 'n'
puts a_n_line.index(station_answer).abs + a_n_line.index(destination_answer).abs
end

if line_answer == 'l' && second_line == 'l'
puts a_l_line.index(station_answer).abs + a_l_line.index(destination_answer).abs
end

if line_answer == '6' && second_line == '6'
puts a_6_line.index(station_answer).abs + a_6_line.index(destination_answer).abs
else 
	puts "The destination you are going to is currently undergoing trackwork, we apologise for this inconvenience."
	puts "________________________________________________________________________________________________________"
	
end


if line_answer == 'n' && second_line == 'l' 
puts a_n_line.index(station_answer) + a_n_line.index("$Union Square") + a_l_line.index(destination_answer) - a_l_line.index("$Union Square").abs
end


# if line_answer == 'n' && second_line == 'l' && destination_answer == ('8th_l' || '6th')
# puts a_n_line.index(station_answer) + a_n_line.index("Union Square") + a_l_line.reverse.index(destination_answer) - a_l_line.index("Union Square").abs
# end

# if line_answer == 'n' && second_line == 'l' && station_answer == ('8th_n')
# puts '3'
# end


# if line_answer == 'n' && second_line == '6' && destination_answer == ('Astor Place')
# puts a_n_line.index(station_answer) + a_n_line.index("Union Square") + a_l_line.index(destination_answer)
# end


