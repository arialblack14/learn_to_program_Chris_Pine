def clock descriptionOfBlock, &block
	puts 'Calling ' + descriptionOfBlock

	block.call
end

clock 'grandfather clock' do 
	hours_passed =  Time.now.hour

	if hours_passed  == 0
		hours_passed = 12
	elsif hours_passed >= 13
		hours_passed = hours_passed - 12		
	end

	puts "DONG!\n" * hours_passed
end