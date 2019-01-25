def joinor(array, delim=', ', final_delim='or')
  return "#{array[0]}" if array.size == 1
  return "#{array[0]} #{final_delim} #{array[-1]}" if array.size == 2
  array_new = []
  array[0..-2].each { |element| array_new += [element, delim ] }
  array_new += [final_delim + ' ', array[-1]]
  array_new.join  
end

p joinor([1, 2])
p joinor([1, 2]) == "1 or 2"
p joinor([1, 2, 3]) == "1, 2, or 3"
p joinor([1, 2, 3], '; ') == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"