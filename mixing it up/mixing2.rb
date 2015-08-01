puts 'What is your favourite number?'
num = gets.chomp.to_i

puts num.class
new_fav_num = num + 1
puts 'Well, ' + new_fav_num.to_s + ' is a better, bigger number!'
