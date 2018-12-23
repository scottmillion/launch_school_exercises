def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n-1) + fibonacci(n-2)
end

def find_fibonacci_index_by_length(num)
  n = 1
  while num > fibonacci(n).digits.count
    n += 1
  end
  n
end

=begin
p fibonacci(2)
p fibonacci(3)
p fibonacci(7)
p fibonacci(10)
=end 

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(4)
p find_fibonacci_index_by_length(5)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)

=begin

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

=end