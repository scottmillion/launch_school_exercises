countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}


# countries_and_capitals.each_with_object({}) do |(k, v), obj|
#   obj[k] = v if k.chr == 'B'
# end


def begins_with_b(string)
  string[0] == 'B'
end

c = countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end

p c