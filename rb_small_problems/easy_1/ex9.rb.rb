def sum(number)
  number.to_s.chars.inject(0) { |sum, x| sum += x.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=begin

proposed solution:

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

=end