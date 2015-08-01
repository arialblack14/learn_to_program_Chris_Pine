age_in_sec = 1204000000
t1 = Time.now.to_i
#calculates birth date in seconds
age = t1 - age_in_sec
#turn seconds to readable date
puts Time.at(age)