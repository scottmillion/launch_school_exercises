def word_cap(string)
  p string.split.map { |x| x.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'



=begin
Also like this:

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

=end