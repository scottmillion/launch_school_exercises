def short_long_short(first, second)
  first.length > second.length ? second + first + second : first + second + first
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')