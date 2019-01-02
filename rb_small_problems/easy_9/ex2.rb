def double_number?(num)
  num_length = num.to_s.size
  return false if num_length.odd?
  half_num_length = num_length / 2
  
  num_array = num.to_s
  array_1 = []
  array_2 = []
  
  counter = 0
  half_num_length.times do |x|
    array_1 << num_array[counter]
    array_2 << num_array[half_num_length + counter]
    counter += 1
  end
  array_1 == array_2
end

def twice(num)
  return num * 2 unless double_number?(num)
  num
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
