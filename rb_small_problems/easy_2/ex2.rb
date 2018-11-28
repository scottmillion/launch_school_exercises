SQMETERS_TO_SQFEET = 10.7639

puts ">> Please enter in the length of your room in meters: "
length = gets.chomp.to_f
puts ">> Please enter in the width of your room in meters: "
width = gets.chomp.to_f
sq_meters = (length * width).round(2)
sq_feet = (sq_meters * SQMETERS_TO_SQFEET).round(2)

puts "Your room is #{sq_meters} square meters."
puts "Your room is #{sq_feet} square feet."

