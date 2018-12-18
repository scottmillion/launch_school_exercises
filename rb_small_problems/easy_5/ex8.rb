NUMBER_WORDS_TO_19 = %w( zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty )

def alphabetic_number_sort(array)
  array.map! { |number| NUMBER_WORDS_TO_19[number] }
  array.sort.map { |number_as_word| NUMBER_WORDS_TO_19.index(number_as_word) }
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


=begin
Book Solution

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end


=end