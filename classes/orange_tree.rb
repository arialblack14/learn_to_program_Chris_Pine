class OrangeTree
  def initialize height
    @height = height
    @age = 0
    @orangeSum = 0
  end

  def height
    puts "This orange tree is " + @height.to_s + " tall!"
  end

  def oneYearPasses
  	puts "One year has passed..."
  	@height += 100
  	puts "The tree's height is now " + @height.to_s
  	@age += 1
  	@orangeSum = 0
		if @height >= 1000
  		puts "RIP old tree..."
  		exit
  	end
  end

  def fruits
  	if @age <= 2
  		puts "No fruit yet..."
  	elsif @age.between?(3,5)
  		puts "The tree grew a few fruit this year."
  		@orangeSum = @orangeSum + @age
  	else
  		puts "Oh my, so many fruit to harvest...!!"
  		@orangeSum = @orangeSum * 5
  	end
  	oneYearPasses
  end

  def countTheOranges
  	fruits
  	puts "The oranges on the tree are " + @orangeSum.to_s
  end

  def pickAnOrange  	
  	unless @orangeSum == 0
  		@orangeSum -= 1
  		puts "Hmm, how delicious..."
  	end
  	oneYearPasses
  end
end

orange_tree = OrangeTree.new '300'.to_i
orange_tree.height
orange_tree.fruits
orange_tree.countTheOranges
orange_tree.pickAnOrange
orange_tree.height
orange_tree.fruits
orange_tree.countTheOranges
orange_tree.pickAnOrange
orange_tree.pickAnOrange
orange_tree.height
orange_tree.fruits
orange_tree.countTheOranges
orange_tree.pickAnOrange