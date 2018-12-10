list = []
5.times do |x|
  puts "Type in the integer #{x + 1}:"
  list << gets.chomp.to_i
end
puts "Type in an integer 6:"
input = gets.chomp.to_i

puts list.include?(input) ? "#{list} includes #{input}." : "#{list} does not include #{input}."