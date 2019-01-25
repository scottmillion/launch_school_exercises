require 'pry'

def prompt(string)
  puts ">>> #{string}"
end

def deal_card(dck, qty)
  cards_dealt = dck.sample(qty)
  dck.reject! { |card| cards_dealt.include?(card) }
  cards_dealt
end

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

def initialize_hand(dck)
  deal_card(dck, 2)
end

def player_turn(p_hand, d_hand)
  prompt("The dealer has:   #{d_hand[0][1]}#{d_hand[0][0]}")
  prompt("You have:         #{p_hand[0][1]}#{p_hand[0][0]} #{p_hand[1][1]}#{p_hand[1][0]}")
  answer = ''
  loop do
    prompt("Choose hit or stay.")
    answer = gets.chomp.downcase
    break if answer == 'hit' || answer == 'stay'
    puts "Oops! Invalid choice."
  end
  answer
end

def hit_hand!(hand, dck)
  hand.push(deal_card(dck, 1)[0])
end

def player_bust?(player_hand)
  false
end

deck = initialize_deck
player_hand = initialize_hand(deck)
dealer_hand = initialize_hand(deck)

choice = ''
loop do
  choice = player_turn(player_hand, dealer_hand)
  hit_hand!(player_hand, deck) if choice == 'hit'
  break if choice == 'stay' || player_bust?(player_hand)
end

puts "hi"