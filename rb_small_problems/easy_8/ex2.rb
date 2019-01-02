def prompt(string)
  puts ">>>> #{string}"
end

prompt('Choose an animal:')
animal = gets.chomp

prompt('Choose a name:')
name = gets.chomp

prompt('Choose an adjective:')
adjective = gets.chomp

prompt('Choose an action verb:')
verb = gets.chomp

puts "There once was a #{animal} named #{name}."
puts "He was #{adjective} and he liked to #{verb}"