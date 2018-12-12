def numeric_order(number)
  ending = number.to_s.split('')
  last_two = ending[-2] + ending[-1] if ending.length > 1
  return number.to_s + 'th' if last_two.to_i > 10 && last_two.to_i < 20
  
  case ending.last
    when '1'
      number.to_s + 'st'
    when '2'
      number.to_s + 'nd'
    when '3'
      number.to_s + 'rd'
    when ('4'..'9'), '0'
      number.to_s + 'th'
    else
      'error'
  end
end

def century(year)
  this_century = (year - 1 + 100) / 100
  p numeric_order(this_century)
end

century(2000)
century(2001)
century(1965)
century(256)
century(5)
century(10103)
century(1052)
century(1127)
century(11201)