DIGITS = ('0'..'9').to_a
  
def integer_to_string(num)
  num_list = num.digits.reverse
  string = []
  num_list.each { |x| string << DIGITS[x] }
  string.join
end

def signed_integer_to_string(num)
  num.negative? ? '-' + integer_to_string(-num) : integer_to_string(num)
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)