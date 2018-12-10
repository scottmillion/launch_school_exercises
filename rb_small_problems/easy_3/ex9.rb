# not finished

def alpha_numeric(string)
  string.chars.select { |x| ('a'..'z').include? x }
end

def real_palindrome?(phrase)
  alpha_numeric(phrase.downcase) == alpha_numeric(phrase.downcase.reverse)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam") 
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 