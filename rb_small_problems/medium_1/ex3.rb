def rotate_rightmost_digits(array, idx_from_right)
  array << array.delete_at(-idx_from_right)
  array
end

def rotate_array(array)
  array_new = []
  array.each { |x| array_new << x }
  array_new << array_new.shift
  array_new
end
=begin
def max_rotation(number)
  array = number.to_s.chars
  array_new = rotate_array(array)
  array_test = []
  array_new.each { |x| array_test << x }
  (array_new.length - 2).times do |x|
    rotate_rightmost_digits(array_test, array_test.size - x - 1)
  end
  
  p array_test.join.to_i
  
end
=end

def max_rotation(number)
  array = rotate_array(number.to_s.chars)
  (array.length - 2).times do |x|
    rotate_rightmost_digits(array, array.size - x - 1)
  end
  array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845