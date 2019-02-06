require 'pry'

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

def merge_sort(array)
  return array if array.size == 1

  binding.pry
  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]
  binding.pry
  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)
  binding.pry
  merge(sub_array_1, sub_array_2)
  binding.pry
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]