class Scrabble

	raw_score = {
		%w{A, E, I, O, U, L, N, R, S, T} =>         1,
		%w{D, G      } =>                         	2,
		%w{B, C, M, P } =>                          3,
		%w{F, H, V, W, Y  } =>                      4,
		%w{K       } =>                             5,
		%w{J, X    } =>                             8,
		%w{Q, Z    } =>                             10

	}

	score = {}

	raw_score.each |letters, points|
	letters.each do |letter|
		letter.gsub!(',', '')
		letter.gsub!(' ', '') #cleaning up letters and removing commas'
	SCORE[letter] = points
end
	def self.score(word)


	end
end

puts Scrabble.score('cabbage')

#################################

class Scrabble

	"A" => 1,
    "B" => 3,
    "C" => 3,
    "D" => 2,
    "E" => 1,
    "F" => 4,
    "G" => 2,
    "H" => 4,
    "I" => 1,
    "J" => 8,
    "K" => 5,
    "L" => 1,
    "M" => 3,
    "N" => 1,
    "O" => 1,
    "P" => 3,
    "Q" => 10,
    "R" => 1,
    "S" => 1,
    "T" => 1,
    "U" => 1,
    "V" => 4,
    "W" => 4,
    "X" => 8,
    "Y" => 4,
    "Z" => 10

def self.score(word)
	sum = 0
	word.upcase.split('').each do |letter|
		sum += SCORE[letter]
	end
	sum
end
end

puts Scrabble.score)('')

###############################

word.upcase.split('').inject(0) do |sum, letter|
	sum + SCORE[letter]
end
















