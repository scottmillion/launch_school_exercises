def merge(arr1, arr2)
  return [] if arr2.empty? && arr1.empty?
  return arr2 if arr1.empty?
  return arr1 if arr2.empty?

  result_list = []
  saved_numbers = []


  arr1.min < arr2.min ? num = arr1.min : num = arr2.min
  num = arr1.min ? num2 = arr2.min : num2 = arr2.min

  result list << num
  p num2

end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]