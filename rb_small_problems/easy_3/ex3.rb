no_space_phrase = []

puts "Please write word or multiple words:"
phrase = gets.chomp
phrase.chars.each { |x| no_space_phrase << x unless x == ' '}

puts "The phrase '#{phrase}' has #{no_space_phrase.size} characters."

# book solution (better)

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."