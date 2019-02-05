def deep_nest(arr)
  return arr if arr.length == 1
  half_length = arr.length / 2
  sub_arr_1 = arr[0...half_length]
  sub_arr_2 = arr[half_length..-1]
  arr_new = [deep_nest(sub_arr_1), deep_nest(sub_arr_2)]
  arr_new
end

def test_method(array)
  array.map! do |sub_array|
    if sub_array[0].count == 1 && sub_array[1].count == 1
      sub_array = [sub_array[0][0], sub_array[1][0]].sort!
    elsif sub_array[0].count == 1 && sub_array[1].count == 2
      sub_array[1] = [sub_array[1][0][0], sub_array[1][1][0]].sort!
      sub_array = [sub_array[0][0], sub_array[1][0], sub_array[1][1]].sort!
    else
      sub_array = test_method(sub_array)
      loop do
        break unless sub_array[0].count > 1 || sub_array[1].count > 1
        sub_array = sub_array[0] + sub_array[1]
        break if sub_array[0].class != Array
      end
      sub_array
    end
  end
end

def flatten_and_sort(array)
  return array.sort if array[0].class != Array
  return [array[0][0], array[1][0]].sort if array.count == 2 && array[0][0].class != Array
  array = test_method(array)
  array[0].concat(array[1]).sort
end

def merge_sort(arr)
  flatten_and_sort(deep_nest(arr))
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]