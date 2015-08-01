puts "When was your birthday? Write year first, then month and then day."

birthyear = gets.chomp.to_i
birthmonth = gets.chomp.to_i
birthday = gets.chomp.to_i

birth = Time.new(birthyear, birthmonth, birthday).to_i
now = Time.now.to_i
old_in_sec = now - birth
old = old_in_sec/(365*24*60*60)

puts "SPANK!" * old
