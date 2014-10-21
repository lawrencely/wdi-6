bros = ['Grouch', 'Harpo', 'Chico']

# counter = 0
# while counter < bros.length
# 	puts bros[counter]
# 	counter += 1
# # end
# prefix = "Mister"
# bros.each do |brother|
# 	puts "#{prefix} #{brother} Marx"
# end

# scores = [247, 2328, 111, 58, 17]
# scores.each do |gettingscore|
# 	puts "$" * gettingscore
# end

instruments = {
	'groucho' => ['guitar','harmonica'],
	'harpo' => ['harp'],
	'chico' => ['piano']
}

instruments.each do |pair|
	puts "#{pair[0]} plays something: blank must have the value of #{pair[1]}"
end

instruments.each do |guy, music_thing|
	puts "#{guy} plays something: blank must have the value of #{music_thing}"
	puts "He also plays #{music_thing[1]}." if music_thing[1]
end

gear = ['piano', 'harp', 'piano', 'harmonica']

gear.select do
	true
end

gear.select do |g|
	g == 'piano' || g == 'guitar' || g == 'harmonica'
end

# it will the come out piano guitar harmonica

# but doesnt changes gear

i_gear = gear.select do |g|
	g.include?'i'
end

gear -i_gear

#minus out the other instruemnts

no_i_gear = gear.reject




# 11.times do |number|
# 	puts "Yay pizza #{number}"
# end

# ## will put yay pizza 11 times

# (5..15).each do |k|
# 	puts "yay hippies #{k}"
# end

#####

groucho = {
	:instrument => 'guitar',
	:vice => 'cigars',
	:yob => 1890
}

harpo = {
	:instrument => 'harp',
	:vice => 'mutism',
	:yob => 1888
}

chico = {
	:instrument => 'piano',
	:vice =>	'women',
	:yob => 1887
}

instruments = {
	'groucho' => ['guitar','harmonica'],
	'harpo' => ['harp'],
	'chico' => ['piano']
}


bros = [groucho, harpo, chico]
guitar_bros = bros.select do |b|
	b[:instrument] == 'guitar'
	puts 
end
















