def triangle(x, y, z)
  array = [x, y, z]
  return :invalid if x + y + z != 180 || array.any?(0)
  return :right if array.any?(90)
  return :obtuse if array.any?(91..178)
  :acute  
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid