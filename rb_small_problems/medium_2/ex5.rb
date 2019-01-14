def triangle(len1, len2, len3 )
  array = [len1, len2, len3 ]
  return :invalid if array.any?(0) ||
         array.max > array.sum - array.max
  return :equilateral if array.uniq.count == 1
  return :isosceles if array.uniq.count == 2
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid