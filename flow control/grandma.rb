puts 'HI'
greet = 'hello.'
puts greet

def last_greet(greet)
	greet_array = []
	deaf = 'HUH?! SPEAK UP, SONNY!'

	while greet != 'BYE'
		if greet == greet.upcase
			year = rand(1930...1950)
			puts 'NO, NOT SINCE ' + year.to_s + '!'
		else
			puts deaf
		end

		greet = gets.chomp
	end

	while greet == 'BYE'
		greet_array << greet 

		puts deaf

		if greet_array.count == 3
			puts greet
			break
		end

		greet = gets.chomp
	end

	if greet != 'BYE'
		greet_array = []
	end
end

last_greet(greet)
