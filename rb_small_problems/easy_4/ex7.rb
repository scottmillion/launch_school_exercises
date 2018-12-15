DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  int_list = string.chars.map { |x| DIGITS[x] }
  negative_index_list = (-int_list.length..-1).to_a.reverse
  sum = 0
  negative_index_list.each do |x|
    sum += int_list[x] * (10 ** (-x - 1))
  end
  sum
end

p string_to_integer('4321')
p string_to_integer('570')

