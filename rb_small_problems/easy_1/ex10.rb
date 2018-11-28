def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

=begin

Another way:



def calculate_bonus(salary, bonus)
  bonus_amt = salary / 2 if bonus == true
  bonus_amt = 0 if bonus == false
  bonus_amt
end


=end