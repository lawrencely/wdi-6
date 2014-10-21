print "Where do you live?  "
suburb = gets.chomp.downcas

# case suburb
# when 'Mosman'
# 	puts 'ooh la did da'
# when 'Glebe'
# 	puts 'is something burning'
# when 'strathfield'
# 	puts 'strattu'
# when 'liverpool'
# 	puts 'yay'
# else
# 	puts 'thats nice'
# end

if "bondi voogee clovelly".include? suburb
	puts "parking is hard"
elsif suburb == 'chatswood'
  puts "good ramen"
else
  puts "im sure thats very nice"
end 
	
	
	

		
		