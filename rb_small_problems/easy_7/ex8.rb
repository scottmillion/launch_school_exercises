def multiply_list(array1, array2)
  array_new = array1.each_with_index.map { |value, index| value * array2[index] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
