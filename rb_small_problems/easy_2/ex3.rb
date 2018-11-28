puts ">> What is the bill amount?"
bill = gets.chomp.to_f
puts ">> What is the tip percentage?"
tip_percent = gets.chomp.to_f
tip = (bill * (tip_percent / 100)).round(2)
total = (tip + bill).round(2)

puts sprintf("The tip is $%.2f", tip)
puts sprintf("The total is $%.2f", total)