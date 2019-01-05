def word_to_digit(sentence)
  numbers = {
    'zero'  => '0', 'one'   => '1', 'two'   => '2', 'three' => '3', 'four'  => '4', 
    'five'  => '5', 'six'   => '6', 'seven' => '7', 'eight' => '8', 'nine'  => '9'
  }
   
  sentence.split.map do |word|
    word_without_ending = word[0..-2]
    word = numbers[word_without_ending] + word[-1] \
                   if numbers[word_without_ending]
    numbers[word] ? numbers[word] : word
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
