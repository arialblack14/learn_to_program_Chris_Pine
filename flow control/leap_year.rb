puts 'What period do you wish to know the leap years for?'
puts 'Starting year: '
start_year = gets.chomp.to_i
puts 'Ending year: '
end_year = gets.chomp.to_i

(start_year..end_year).each do |year|
	leap_years = []

	if (year % 4 == 0)
		leap_years << year unless (year % 100 == 0)
		if (year % 400 == 0)
			leap_years << year
		end
	end

	puts leap_years
end