class Grandma
	attr_accessor :name
	def initialize(name)
		puts "#{ name } says .....WHAT?!..... "
	end
	def converse
		message = gets.chomp.strip
		if message == "BYE"
			puts "HUH? WHERE YOU GOING?! GET ME SOME TEA!"
		elsif all_caps?(message)
			puts "NOT SINCE #{@year}!"
		else
			puts "HUH?! SPEAK UP SONNY!"
		end
	end
	def all_caps?(m)
		if m == m.upcase
			@year = Random.rand(1930..1950)
		end
	end
end


nan = Grandma.new('Nan')


loop do 
	nan.converse
end

##############################################################

class Granny
	def speak_up
		puts "NO, NOT SINCE #{1920 + rand(20)}"
	def no 
		puts "Speak up sonny!"
	end
	end
	def bye
		puts "BYE NOW YOU SPECIAL PUMPKIN"
	end
	def bye?
		@bye == 3
	end

	def countbye(s)
		@bye ||= 0
		if s == "BYE"
			@bye += 1
		else 
			@bye = 0
		end
	end
	def response(s)
		countbye s
		if done?
			bye
		elsif s.empty? || s.upcase == s
			speak_up
		else
			no
		end
	end

	def talk
		begin
			puts response(gets.chomp)
		end	until done?
		end
		 
end


