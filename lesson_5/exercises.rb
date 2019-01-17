arr = [2, 5, 3, 4, 1].sort do |a, b|
  b <=> a
end

p arr

['arc', 'bat', 'cape', 'ants', 'cap'].sort

tea = ['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
 
p tea

people = { Kate: 27, john: 25, Mike:  18 }

p people.sort_by { |name, age| age }

p people.sort_by { |name, age| name.downcase }

array = [3, 4, 29, 1, 7]

p array.minmax

new_array = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

sorted = new_array.sort_by do |sub_array|
  sub_array.map do |element|
    element.to_i
  end
end

p sorted


taco = [['a', 'z'],['b', 'y']]

frank = taco.map do |x|
  x.select { |letter| letter < 't' }
end

p frank

# an example of what not to do
# don't iterate while mutating
arr = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]
hi = arr.map do |sub_arr|
  sub_arr.pop
end
p hi


