

# class ALLERGIES = {
# 		1 => 'eggs',
# 		2 => 'peanuts',
# 		4 => 'shellfish',
# 		8 => 'strawberries',
# 		16 => 'tomatoes',
# 		32 => 'chocolate',
# 		64 => 'pollen',
# 		128 => 'cats'
# 	}

# 	def self.allergies_to()
# 		allergic = 0
# 		allergies.each do |x|
# 			allergic = allergic + allergies[x]
# 		end
# 	end
# 	puts allergic
# end

	# allergies = Allergies.new(34)
	# allergies.allergic_to?('chocolate')
	# allergies.allergic_to?('cats')
	# allergies.list

class Allergies

	ALLERGENS = {
		1 => 'eggs',
		2 => 'peanuts',
		4 => 'shellfish',
		8 => 'strawberries',
		16 => 'tomatoes',
		32 => 'chocolate',
		64 => 'pollen',
		128 => 'cats'}

	def initialize(flags)
		@flags = flags
	end

	def allergic_to?(allergen)
		list.include? allergen
	end
	
	def list # binary numbers in here are to the power of 2
		allergies = []
		ALLERGENS.each do |code, allergen|
			if (@flags & code) > 0 # '&' bitwise & - used in binary to see if there is a relationship between each other
				allergies << allergen
			end
		end
		allergies
	end
end


