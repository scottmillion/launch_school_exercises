def reverse!(array)
  array_new = []
  array.length.times { array_new << array.pop }
  array_new.each { |element| array << element }
  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []