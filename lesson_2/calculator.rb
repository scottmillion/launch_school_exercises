Kernel.puts("Welcome to Calculator!")


# ask the user for two numbers
Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

# ask the user for an operation to perform
Kernel.puts("What operation should we perform on the two numbers? (1) add (2) subtract (3) multiply (4) divide")

# perform the operation on the two numbers
case operator = Kernel.gets().chomp()
  when '1'
    result = number1.to_i() + number2.to_i()
    puts 'add'
  when '2'
    result = number1.to_i() - number2.to_i()
    puts 'subtract'
  when '3' 
    result = number1.to_i() * number2.to_i()
    puts 'multiply'
  when '4'
    result = number1.to_f() / number2.to_f()
    puts 'divide'
  else
    puts "error"
end

# output the result
Kernel.puts("It's #{result}")

# Kernel.puts(number1.inspect)