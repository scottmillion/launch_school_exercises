# number 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")

# Also ages.key? or ages.member?

# number 2

munsters_description = "The Munsters are creepy in a good way."


p munsters_description.swapcase! == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.capitalize! == "The munsters are creepy in a good way."
p munsters_description.downcase! == "the munsters are creepy in a good way."
p munsters_description.upcase! == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# number 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add this: additional_ages = { "Marilyn" => 22, "Spot" => 237 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# ages["Marilyn"] = 22
# ages["Spot"] = 237

ages.merge!(additional_ages)

p ages

# number 4

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?('Dino')
p advice.match("Dino")
p advice.match("important")

# number 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# number 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# add "Dino"

flintstones.push("Dino") # or use <<

p flintstones


# number 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino", "Hoppy") # or double push ... .push("Dino").push("Hoppy")

p flintstones


# Also could use: flintstones.concat(%w(Dino Hoppy))  ... concat adds an array rather than one item

# number 8

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

p advice.slice!(0..38) # or advice.slice!(0, advice.index('house'))
p advice

# number 9

statement = "The Flintstones Rock!"

p statement.count('t')

# number 10

title = "Flintstone Family Members"

spaces = (40 - title.size).to_f / 2
first_half = spaces.floor
second_half = spaces.ceil

first_half.times {print ' '}
print title
second_half.times {print ' '}

# or title.center(40)
puts ''
puts title.center(40)

