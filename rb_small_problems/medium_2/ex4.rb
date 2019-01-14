
def balanced?(string)
  open_count = 0
  close_count = 0
  string.chars.each do |char|
    open_count += 1 if char == '('
    close_count += 1 if char == ')'
    return false if close_count > open_count
  end
  close_count == open_count
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false