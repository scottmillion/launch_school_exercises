def substrings_at_start(string)
  array = []
  growing_string = ''
  string.chars.each do |char|
    array << growing_string += char
  end
  array    
end
    

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']