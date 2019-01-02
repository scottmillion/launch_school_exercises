def substrings_at_start(string)
  array = []
  growing_string = ''
  string.chars.each do |char|
    array << growing_string += char
  end
  array    
end

def substrings(string)
  array = []
  string.length.times do |x|
    array << substrings_at_start(string)
    string_array = string.chars
    string_array.shift
    string = string_array.join
  end
  array.flatten
end

def palindromes(string)
  array = substrings(string)
  array_new = []
  array.each do |element|
    array_new << element if element.length > 1 && element == element.reverse
  end
  array_new
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]