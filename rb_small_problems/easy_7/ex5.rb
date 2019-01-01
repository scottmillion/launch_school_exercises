def staggered_case(string)
  array = []
  string.chars.each_with_index do |character, index| 
    index.odd? ? character.downcase! : character.upcase!
    array << character
  end
  array.join
end


# Other Solutions:

=begin
def staggered_case(words)
  words.chars.each_with_index.map do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join
end

def staggered_case(string)
  staggered = string.chars
  staggered.each_with_index do |character, index| 
    index.odd? ? character.downcase! : character.upcase!
    p character
  end
  staggered.join
end


=end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'