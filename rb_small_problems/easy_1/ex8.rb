def average(array)
    array.inject(0) { |sum, x| sum += x } / array.size
    # array.reduce(:+) / array.size
    # array.inject(:+) / array.size
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin

Suggested solution:

# note that #reduce and #inject are the same

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

Another student submitted: 

def average(array)
  array.sum / array.count
end

=end