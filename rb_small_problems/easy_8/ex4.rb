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


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]