def ascii_value(phrase)
  # sum = 0
  # phrase.chars.each { |x| sum += x.ord }
  # sum

  phrase.chars.reduce(0) { |sum, x| sum += x.ord }
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')