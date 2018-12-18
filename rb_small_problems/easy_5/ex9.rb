def crunch(string)
  crunched_string = ''
  string.chars.each_with_index { |value, index| crunched_string << value if index == 0 || value != string.chars[index - 1] }
  crunched_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''