def running_total(array)
  return [] if array == []
  array_new = [array.first]
  counter = 0  
  (array.length - 1).times do
    array_new << array_new[counter] + array[counter + 1]
    counter += 1
  end

  array_new
end


p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])


# BOOK SOLUTION

=begin

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

=end