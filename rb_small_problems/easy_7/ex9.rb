def multiply_all_pairs(array1, array2)
  array_new = []
  array1.each do |x|
    array2.each do |y|
      array_new << x * y
    end
  end
  array_new.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]