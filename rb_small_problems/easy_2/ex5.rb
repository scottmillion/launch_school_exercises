puts ">> What is your name?"
name = gets.chomp
unless name.chars.last == '!'
  puts "Hello #{name}"
else
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
end