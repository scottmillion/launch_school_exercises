puts ">> Please enter an integer greater than 0:"
number = nil
loop do
  number = gets.chomp.to_i
  break if number > 0
  puts "That was not an integer greater than 0! Try again:"
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer = nil
loop do
  answer = gets.chomp
  break if answer == 's' || answer == 'p'
  puts "#{answer} is not a 's' or 'p'. Try again."
end

sum_amount = (1..number).sum
product_amount = (1..number).reduce(:*)

if answer == 's'
  puts "The sum of the integers between 1 and #{number} is #{sum_amount}"
elsif answer == 'p'
  puts "The product of the integers between 1 and #{number} is #{product_amount}."
else
  puts "error"
end
