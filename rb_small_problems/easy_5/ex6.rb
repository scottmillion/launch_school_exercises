def word_sizes(words)
  word_counts = Hash.new(0)
  words.split(' ').each do |word|
    word_counts[word.size] += 1
  end
  word_counts
end


word_sizes('Four score and seven.')
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?") 
word_sizes('')