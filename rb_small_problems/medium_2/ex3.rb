def letter_percentages(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    case
    when char =~ /[a-z]/
      hash[:lowercase] += 1
    when char =~ /[A-Z]/
      hash[:uppercase] += 1
    else 
      hash[:neither] += 1
    end
  end
  total = hash.values.sum
  hash[:lowercase] = hash[:lowercase].to_f / total * 100
  hash[:uppercase] = hash[:uppercase].to_f / total * 100
  hash[:neither] = hash[:neither].to_f / total * 100
  hash
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }