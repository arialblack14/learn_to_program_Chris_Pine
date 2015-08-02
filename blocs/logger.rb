def log descriptionOfBlock, &block
	puts "Calling ... " + descriptionOfBlock + '.'
	block.call
	puts descriptionOfBlock + " has ended."
end

log 'first block' do
	output = 42

	log "inner block" do 
		number = 999
		puts number
	end

	puts output
end