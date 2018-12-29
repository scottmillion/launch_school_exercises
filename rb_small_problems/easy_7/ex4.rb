def swapcase(string)
  string_new = string.chars.map do |x| 
    if x.downcase == x
      x.upcase
    elsif x.upcase == x
      x.downcase
    else
      x
    end
  end
  string_new.join
end  

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'