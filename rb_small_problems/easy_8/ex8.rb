def double_consonants(string)
  string_new = ''
  string.chars.each do |char|
    char =~ /[a-z&&[^'aeiou']]/i ? string_new << char * 2 : string_new << char
  end
  string_new
end
    
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""