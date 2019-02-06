def unegyptian(egyptian_denominators_array)
  egyptian_denominators_array.inject(0) { |sum, denominator| sum += Rational(1, denominator) }
end

def egyptian(rational_number)
  array = []
  adjusted_number = rational_number
  denominator = 1
  loop do
    unit_fraction = Rational(1, denominator)
    if unit_fraction <= adjusted_number
      array << denominator
      break if unit_fraction == adjusted_number
      adjusted_number -= unit_fraction
    end
    denominator += 1
  end
  array
end

p egyptian(Rational(2, 1))
p egyptian(Rational(137, 60)) 
p egyptian(Rational(3, 1))

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)