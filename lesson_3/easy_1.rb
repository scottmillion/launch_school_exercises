def print_question(question_number, question)
  puts "---"
  puts "Question #{question_number}:"
  puts "---"
  puts "===> #{question}"
end

def print_answer(string)
  puts "---"
  puts "A: #{string}"
  puts "---"
  puts ""
end


print_question(1, 'What would you expect the code below to print out?')
puts"""
numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers
"""
print_answer("I expect, 1 2 2 3 to come out because didn't use a '!'")

print_question(2, 'Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:')
puts"""
what is != and where should you use it?
put ! before something, like !user_name
put ! after something, like words.uniq!
put ? before something
put ? after something
put !! before something, like !!user_name
"""
print_answer("! at the end mutates the caller and ? at the end returns a boolean. 1) Does not equal (boolean) 2. Not 3. Mutate caller 4. Probably part of ternary operation 5. return boolean 6. return boolean")

print_question(3, 'Replace the word "important" with "urgent" in this string:')
puts'''
advice = "Few things in life are as important as house training your pet dinosaur."
'''
print_answer("advice.gsub!('important', 'urgent') ")

print_question(4, 'What do the following method calls do (assume we reset numbers to the original array between method calls)?')
puts'''
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)
'''
print_answer("delete_at 1 will delete the value at index 1, in this case '2'. The 2nd will delete the value 1.")

print_question(5, 'Programmatically determine if 42 lies between 10 and 100.')
print_answer("(0..100).include? 42")

# Note that .cover? would be a better choice here as it uses less memory and checks if something will fit between vs. if it's included in the list.

print_question(6, 'Show two different ways to put the expected "Four score and " in front of it.')
puts'''
famous_words = "seven years ago..."
'''
print_answer("puts 'Four score and ' + famous_words ... puts 'Four score and ' << famous_words ")

print_question(7, 'What will be the result?')
print_answer("42")

print_question(8, 'Make this into an un-nested array.')
puts'''
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
'''
print_answer("put .flatten! at the end")

print_question(9, "Turn this into an array containing only two elements: Barney's name and Barney's number")
puts'''
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
'''
print_answer("array = []
  flintstones.each do |key, value| 
  array << key && array << value if flintstones[key] == 2
end
  
p array")

=begin 
Better answer:

flintstones.assoc("Barney")
#=> ["Barney", 2]

=end
