puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = current_year + (retirement_age - current_age)

puts "It's #{current_year}. You will retire in #{retirement_year}."