def print_in_box(string)
spaces = string.chars.map { |element| ' ' }.join
dashes = string.chars.map { |element| '-' }.join
puts"""
+-#{dashes}-+
| #{spaces} |
| #{string} |
| #{spaces} |
+-#{dashes}-+
"""
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')