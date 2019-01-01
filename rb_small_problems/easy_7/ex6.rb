def staggered_case(string)
  index_adjustor = 0
  string.chars.each_with_index.map do |val, idx|
    unless val =~ /[a-z]/i
      index_adjustor += 1
    else
     (idx - index_adjustor).even? ? val.upcase! : val.downcase!
    end
    val
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'