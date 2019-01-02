def sequence(number)
  array = []
  number.times { |x| array << x + 1 }
  array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

=begin

Also could do:

def sequence(number)
  (1..number).to_a
end
  
=end