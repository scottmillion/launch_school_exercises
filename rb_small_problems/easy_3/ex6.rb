def xor?(boolean1, boolean2)
  if boolean1 == true && boolean2 == true
    false
  elsif boolean1 == false && boolean2 == false
    false
  else
    true
  end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)

# refactored

def xor2?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p '----'
p xor2?(5.even?, 4.even?)
p xor2?(5.odd?, 4.odd?)
p xor2?(5.odd?, 4.even?)
p xor2?(5.even?, 4.odd?)

# refactored again

def xor3?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

p '----'
p xor3?(5.even?, 4.even?)
p xor3?(5.odd?, 4.odd?)
p xor3?(5.odd?, 4.even?)
p xor3?(5.even?, 4.odd?)
