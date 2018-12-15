def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  operators = %w(Adding Subtracting Multiplying Dividing)
  operators[operator.to_i - 1]
end

name = ''
loop do
  prompt("Welcome to Calculator! Enter your name:")
  name = Kernel.gets().chomp()
  break if name != ''
  prompt("Oops. You forgot to write your name.")
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  # ask the user for an operation to perform
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    # %w(1 2 3 4).indlude?(operator) works too!
    break if ('1'..'4').to_a.include?(operator)
    prompt("Oops! Must choose 1, 2, 3, or 4. Try again.")
  end

  prompt("#{operation_to_message(operator)} the two" \
    " numbers #{number1} and #{number2}...")

  # perform the operation on the two numbers
  case operator
  when '1'
    result = number1.to_i() + number2.to_i()
  when '2'
    result = number1.to_i() - number2.to_i()
  when '3'
    result = number1.to_i() * number2.to_i()
  when '4'
    result = number1.to_f() / number2.to_f()
  else
    puts "error"
  end

  # output the result
  prompt("It's #{result}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")
