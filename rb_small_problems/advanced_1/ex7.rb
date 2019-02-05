def delete_first_min!(arr)
  min_index = arr.index(arr.min)
  arr.delete_at(min_index)
end

def merge(arr1, arr2)
  holder = []
  merged_array = []
  (arr1.size + arr2.size).times do |x|
    case 
    when arr1[x] && arr2[x]      then holder.push(arr1[x], arr2[x])
    when arr1[x].nil? && arr2[x] then holder.push(arr2[x])
    when arr2[x].nil? && arr1[x] then holder.push(arr1[x])
    end
    merged_array << delete_first_min!(holder)
  end
  merged_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5] 