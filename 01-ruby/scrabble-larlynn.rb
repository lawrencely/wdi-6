
class Scrabble 

# SCRABBLE = {
# 	1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
# 	2 => ['D', 'G'],                          
# 	3 => ['B', 'C', 'M', 'P'],                        
# 	4 => ['F', 'H', 'V', 'W', 'Y'],                      
# 	5 => ['K'],                                  
# 	8 => ['J', 'X'],                               
# 	10 => ['Q', 'Z']     }     
SCRABBLE = {
	'a' => 1,
	'b' => 3,
	'c' => 3,
	'd' => 1,
	'e' => 1,
	'f' => 4,
	'g' => 2,
	'h' => 4,
	'i' => 1,
	'j' => 8,
	'k' => 5
}		


	def self.score(word)
		answer = 0
		letters = word.split('') # split up the string and gave me an array of every single letter
		letters.each do |x|
			answer = answer + SCRABBLE[x]
		end
		puts answer
	end
end






Scrabble.score("cabbage")






