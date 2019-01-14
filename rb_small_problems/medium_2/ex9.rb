def bubble_sort!(arr)
  loop do
    stop = true
    (arr.size - 1).times do |x|
      if arr[x] > arr[x + 1]
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        stop = false
      end
    end
    break if stop == true
  end
  arr
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]


array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)