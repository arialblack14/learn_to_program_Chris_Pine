def log descriptionOfBlock, &block
	$indent = 0
	puts "Calling ... " + descriptionOfBlock + '.'
	block.call
	puts ("  " * $indent) + descriptionOfBlock + " has ended."
end

log 'first block' do
	output = 42

	log "inner block" do 
		number = 999
		$indent += 2
		puts ("  " * $indent) + number.to_s
	end

	$indent = 0
	puts ("  " * $indent) + output.to_s
end