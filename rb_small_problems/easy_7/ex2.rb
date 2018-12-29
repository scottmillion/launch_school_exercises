def letter_case_count(string)
  counter_alphabet_lowercase = 0
  counter_alphabet_uppercase = 0
  counter_neither = 0
  string.chars.each do |x|
    if ('a'..'z').include? x
      counter_alphabet_lowercase += 1
    elsif ('A'..'X').include? x
      counter_alphabet_uppercase += 1
    else
      counter_neither += 1
    end
  end
  
  { lowercase: counter_alphabet_lowercase, 
    uppercase: counter_alphabet_uppercase, 
    neither: counter_neither 
  }
  
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


=begin
Book Solution:

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

=end