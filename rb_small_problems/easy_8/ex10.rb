def center_of(string)
  string_midpoint = string.length / 2
  if string.length.even?
    string[string_midpoint - 1, 2]
  else
    string[string_midpoint]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'