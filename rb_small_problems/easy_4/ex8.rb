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

def string_to_signed_integer(string)
  return string_to_integer(string) if DIGITS.include? string.chars.first
  
  case string.chars.first
  when '-' 
    string = string.chars
    string.shift
    string = string.join
    -1 * string_to_integer(string)
  when '+'
    string = string.chars
    string.shift
    string = string.join
    string_to_integer(string)
  else
    puts "error"
  end

end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')