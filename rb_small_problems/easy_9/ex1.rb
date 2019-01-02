def greetings(array, hash)
  "Hello, #{array.join(' ')}! Nice to have a"\
  " #{hash[:title]} #{hash[:occupation]} around."
end



p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.