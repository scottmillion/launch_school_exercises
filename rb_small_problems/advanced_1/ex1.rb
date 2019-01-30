WORD_LIST = {
  noun: %w(dog cat mouse pizza taco lizard duck moose human),
  verb: %w(jump eat lick climb swallow smell wipe clean),
  adjective: %w(red stinky slick loud mellow cold hot handsome),
  adverb: %(fast quickly slowly lazily grudgingly loudly proudly),
}

text = File.read("text_file.txt")

madlib_text = text.split.map do |word|
  temp_word = word
  chopped = false
  if /[.,!]/ =~ word[-1]
    temp_word = word[0..-2]
    chopped = true
  end
  if WORD_LIST.keys.include?(word.downcase.to_sym) && chopped == false
    word[0].upcase == word[0] ? WORD_LIST[word.downcase.to_sym].sample.capitalize : WORD_LIST[word.to_sym].sample
  elsif WORD_LIST.keys.include?(temp_word.downcase.to_sym) && chopped == true
    word[0].upcase == word[0] ? WORD_LIST[temp_word.downcase.to_sym].sample.capitalize + word[-1] : WORD_LIST[temp_word.to_sym].sample + word[-1]
  else
    word
  end
end.join(' ')

p madlib_text