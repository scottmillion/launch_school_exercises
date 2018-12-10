def oddities(array)
  array.select { |x| array.index(x).even?}
end

p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6]) 
p oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([])