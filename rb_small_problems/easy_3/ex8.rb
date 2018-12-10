def palindrome?(phrase)
  phrase == phrase.reverse
end

p palindrome?('madam')
p palindrome?('Madam') 
p palindrome?("madam i'm adam") 
p palindrome?('356653')