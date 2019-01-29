require 'pry'

def initialize_deck
  new_deck = []
  suits = %w(C H D S)
  card_values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suits.each do |suit|
    13.times do |x|
      new_deck << [suit, card_values[x]]
    end
  end
  new_deck
end

def hand_value(hand)
  temp_deck = initialize_deck
  temp_deck
end

p hand_value(5).count