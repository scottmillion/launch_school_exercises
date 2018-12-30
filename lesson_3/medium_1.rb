#1

10.times { |x| puts (' ' * x) + "The Flintstones Rock!" }

#2 - why is this an error and how to fix?

# error: puts "the value of 40 + 2 is " + (40 + 2)

# You can't concatenate a string and an integer! 

# fix
puts "the value of 40 + 2 is #{40 + 2}"

# 3

def factors(number)
  return "#{number} is 0 or a negative number, so no factors." if number.negative? || number == 0
  divisor = number
  factors = []
  while true
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  break if divisor == 0
  end
  factors
end

=begin
Also could have done it this way:

while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

=end

p factors(-1)
p factors(32)
p factors(17)
p factors(0)

# Bonus Question: What is the purpose of the number % divisor == 0 ?
# 0 means no remainder, so numbers that meet this criteria are factors

# Bonus Question2: What is the purpose of 'factors' at the end?
# It returns the array of factors

# 4

# Given this code

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Is there a difference between + and << ???

# Answer: Yes, + does not mutate the caller while << does. Method 1 returns 
# the original object mutated. Method 2 returns a copy and does not modify the
# array that was input.

# 5 - what's wrong with the below? Then fix it.

=begin
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
=end

# Variable scope is the issue. limit cannot be called within the method.

# One fix would be to pass limit in as an argument and then add the limit parameter.


def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# 6

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#7

# Answer: 34

#8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters

# does the data get ransacked? 

# Answer: Yes

#9 

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

p rps("rock", "scissors")

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# paper

# 10

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# what does bar(foo) equate to?

# Answer: No

p bar(foo)