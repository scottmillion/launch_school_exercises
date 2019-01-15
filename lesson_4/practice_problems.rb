flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |value, index|
  flintstones_hash[value] = index
end
p flintstones_hash



ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

ages2 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages2.each { |key, value| ages2.delete(key) if value > 100 }

p ages2 # OR ages.keep_if { |_, age| age < 100 }

ages3 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages3.values.min

flintstones2 = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones2.each_with_index do |name, idx|
  idx if name.start_with?("Be")
end

flintstones3 = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones3.map! { |name| name[0, 3] }

statement = "The Flintstones Rock"
hash_new = {}
statement.chars.each do |letter|
  hash_new[letter] ? hash_new[letter] += 1 : hash_new[letter] = 1
end
p hash_new

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

def titleize(string)
  string.split.map { |x| x.capitalize }.join(' ')
end

words = "the flintstones rock"
p titleize(words)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  age_group = "kid" if value["age"] < 18  
  age_group = "adult" if value["age"] >= 18
  age_group = "senior" if value["age"] >= 65
  value["age_group"] = age_group
end

p munsters