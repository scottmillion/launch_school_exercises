def prompt(string)
  puts ">>> #{string}"
end

def valid_positive_amount?(number)
  unless number > 0
    puts ">>> Invalid Positive Number <<<"
    false
  else
    true
  end
end


monthly_payment = ''


loop do
  
  principle_loan_amount = ''
  loop do
    prompt('How much is the loan?')
    principle_loan_amount = gets.chomp.to_f.round(2)
    break if valid_positive_amount?(principle_loan_amount)
  end
  
  interest_rate_int = ''
  loop do
    prompt('What is the annual percentage rate? (2.5 for 2.5%)')
    interest_rate_int = gets.chomp.to_f
    break if interest_rate_int > 0
    prompt('"0" or non-positive numbers are not allowed.')
  end
  
  annual_interest_rate = interest_rate_int / 100
  monthly_interest_rate = annual_interest_rate / 12
  
  loan_duration_years = ''
  loop do
    prompt('How long is the loan? (input years)')
    loan_duration_years = gets.chomp.to_f
    break if loan_duration_years > 0
    prompt('"0" or non-positive numbers are not allowed.')
  end
  
  loan_duration_months = 12 * loan_duration_years
  monthly_payment = principle_loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
  prompt("So your monthly payment is $#{'%.2f' % monthly_payment}")
  prompt('Would you like to make another calculation?')
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

puts "Goodbye!"