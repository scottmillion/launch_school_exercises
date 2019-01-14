LETTER_PAIRS =   [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], 
                  ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
                  ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
                  ['Z', 'M']].freeze

def block_word?(string)
  index_list = []
  string.chars.each do |letter|
    index_list << LETTER_PAIRS.flatten.index(letter.upcase) / 2
  end
  index_list.uniq.size == string.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
