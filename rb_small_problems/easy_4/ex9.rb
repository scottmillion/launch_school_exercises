DIGITS = ('0'..'9').to_a
  
def integer_to_string(num)
  num_list = num.digits.reverse
  string = []
  num_list.each { |x| string << DIGITS[x] }
  string.join
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)
p integer_to_string(5293)