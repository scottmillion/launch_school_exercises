def uppercase?(string)
  string.chars.each do |char|
    return false if char =~ /[a-z]/
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin

### simpler solution!

string == string.upcase

=end