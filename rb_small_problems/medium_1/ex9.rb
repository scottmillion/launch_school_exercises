def fibonacci(n)
  fib_list = []
  (0...n).each do |num|
    num <= 1 ? fib_list << 1 : \
    fib_list << fib_list[num - 1] + fib_list[num - 2]
  end
  fib_list.last
end

# 1 1 2 3 5 8 13 21 34 55


=begin
def fibonacci(num)
  return 1 if num == 1 || num == 2
  fibonacci(num - 1) + fibonacci(num - 2)
end
=end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(15)