# Q1 and Q2 and Q3

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"

end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# What will be displayed?

# Answer: my_string stays the same, an_array_param adds "rutabaga". << causes the array to mutate, but += 
# creates a copy of the string, and does not perform a mutation

puts "-------"

# 4

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Answer: We've achieved the opposite affects from our previous example. The = causes re-assignment, so we lose the connection
# to the original object

# 5

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# How could we remove the unnessary duplication?

# Just leave """ color == "blue" || color == "green" """
# Ruby will return true or false by default


# 6

