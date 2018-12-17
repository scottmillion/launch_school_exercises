ALPHA = ("a".."z").to_a + ("A".."Z").to_a

def cleanup(string)
  new_string = []
  string.chars.each do |character|
    if ALPHA.include?(character)
      new_string << character
    else
      new_string << ' '
    end
  end
  
  new_string.join.squeeze(' ')
  
end

p cleanup("---what's my +*& line?")
