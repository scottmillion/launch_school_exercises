def negative(number)
  return number if number.negative? || number.zero?
  -number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

=begin
 
Other solutions...

number > 0 ? -number : number

OR

-number.abs

=end