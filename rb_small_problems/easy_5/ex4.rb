def swap(string)
  string = string.split(' ').map { |x|  x.length > 1 ? x[-1] + x[1...(x.length - 1)] + x[0] : x }
  string.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'