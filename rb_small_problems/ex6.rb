def reverse_words(string)
  words = []
  string.split.each { |word| word.length >= 5 ? words << word.reverse : words << word }
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin
  
Answer by another student using .map which I liked a lot

def reverse_words(phrase)
  phrase.split.map { |word| word.length > 4 ? word.reverse : word }.join(' ')
end
  
=end