words = []
input_words = "default"
while input_words != ""
  puts "Gimme words!"
  input_words = gets.strip
  words << input_words
end
words.pop
i = 0
words.each do |word|
  temp = words[i] <=> words[i+1]
  if temp == 1
    smaller_num = words[i+1] 
    words[i+1] = words[i]
    words[i] = smaller_num
  end
  i += 1
end