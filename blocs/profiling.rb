def profile descriptionOfBlock, &block
	startTime = Time.now

	block.call
	duration = Time.now - startTime

	puts descriptionOfBlock + ': ' + duration.to_s + ' seconds'
end

profile '2500 doublings' do
	number = 1

	2500.times do
		number = number + number
	end

	puts number.to_s.length.to_s + ' digits'
end

profile 'count to 1 million' do
	number = 0

	1000000.times do
		number = number + 1
	end
end

profile 'count to a 100.000.000' do |number|
	number = 0

	100000000.times do 
		number = number = 1 
	end
end