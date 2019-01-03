def rotate_array(array)
  array_new = []
  array.each { |x| array_new << x }
  array_new << array_new.shift
  array_new
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Another way to do it
=begin
def rotate_array(arr)
  arr.drop(1) << arr.first
end
=end
# def rotate_array(array)
# array[1..-1] + [array[0]]
# end