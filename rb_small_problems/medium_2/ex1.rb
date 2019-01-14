def longest_sentence(filename)
  f = File.open(filename, "r")
  longest = ''
  f.read.split(/[.!?]/).each do |sentence|
    longest = sentence if longest.size < sentence.size
  end
  puts longest, longest.split.size
end

longest_sentence("ex1_frankenstein.txt")