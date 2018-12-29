def interleave(array_1, array_2)
  array_alternated = []
  array_1.size.times do |x|
    array_alternated << array_1[x]
    array_alternated << array_2[x]
  end  
  array_alternated
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
