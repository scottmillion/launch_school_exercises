def repeater(string)
  string_array = []
  string.chars.each do |char|
    string_array << char * 2
  end
  string_array.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''