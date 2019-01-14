def featured?(number)
  true unless number.even? || number % 7 != 0 || number.digits.uniq.size != number.digits.size
end

def featured(number)
  loop do
    number += 1
    break if featured?(number) || number >= 9_876_543_210
  end
  return 'There is no possible number that fulfills those requirements.' if number >= 9_876_543_210
  number
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements