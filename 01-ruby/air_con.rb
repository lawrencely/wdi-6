puts "What is the current temperature?"
  current_temperature = gets.chomp.to_i
puts "Is the Air Con working ? (y/n)"
  air_working = gets.chomp
puts "what temperature do ya want?"
  desire_temp = gets.chomp.to_i

  if air_working == "y" && desire_temp > current_temperature
  	puts "Turn on the AC please"
  elsif 
   	 air_working == "n" && current_temperature > desire_temp
  	puts "Fix the Ac its hot now"
  elsif 
  	air_working == "n" && current_temperature < desire_temp
  	puts "Fix the AC"
  	
  else
  	puts "we are lost atm(your good go away)!"

end




