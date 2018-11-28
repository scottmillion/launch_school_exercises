def stringy(number)
  string_thing = []
  counter = 0
  loop do
    if counter.even?
      string_thing << '1'
    elsif counter.odd?
      string_thing << '0'
    else
      puts "error"
    end
    counter += 1
    return string_thing.join if counter == number
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


=begin

Book way

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

=end