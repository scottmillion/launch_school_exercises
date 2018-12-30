=begin

Question 1
What do you expect to happen when the greeting variable is referenced in the last line of the code below?

=end

if false
  greeting = “hello world”
end

p greeting

### ANSWER ATTEMPT ### I expect an error because greeting would have to be initialized first.

### REAL ANSWER ### Actually, it's just nil. Normally we'd get an error but the if statement initializes even if condition isn't met. Interesting!


# Question 2 - What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

### ANSWER ATTEMPT ### { :a => 'hi there' }

### REAL ANSWER ### Got it right!

# Question 3 - What will be printed by each of these code groups?

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

### ANSWER ATTEMPT ### These are all re-assigned so they stay the same
### REAL ANSWER ### Correct!

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


### ANSWER ATTEMPT ### These are all re-assigned so they stay the same
### REAL ANSWER ### Correct!

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

### ANSWER ATTEMPT ### These mutate the caller, so the changes stick.
### REAL ANSWER ### Correct!


# Question 4 - Fix the code!

=begin
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end
=end


### ANSWER ATTEMPT ###
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  dot_separated_words.each do |x|
    unless x.to_i.between?(0,255) 
      return false
    end
  end
  true
end

p dot_separated_ip_address?('186.37.119.58')
p dot_separated_ip_address?('446.37.119.58')
p dot_separated_ip_address?('60.334.225.140')
p dot_separated_ip_address?('80.393.99.218')
p dot_separated_ip_address?('106.96.154.248')
p dot_separated_ip_address?('207.247.253.232')
p dot_separated_ip_address?('186.37.119')
p dot_separated_ip_address?('186.37.119.58')
p dot_separated_ip_address?('186.37.119.58.293')

 
### REAL ANSWER ### 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word) 
  end

  true
end


