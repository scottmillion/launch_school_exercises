def triangle(n)
  (1..n).each { |x| puts ' ' * (n - x) + '*' * x }
end

triangle(5)
triangle(9)