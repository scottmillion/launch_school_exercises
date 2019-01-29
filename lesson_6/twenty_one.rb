require 'pry'

CARD_VALUES = {
  '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8,
  '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10, 'A' => 1
}

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

def print_hand(hand)
  hand.each do |card| 
    print "#{card.last}#{card.first}"
    print hand.last == card ? "\n" : ' '
  end
end

def player_turn(p_hand, d_hand)
  prompt("The dealer has:   #{d_hand[0][1]}#{d_hand[0][0]}")
  print ">>> You have:         "
  print_hand(p_hand)
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
  prompt("Hit card is a #{hand.last[1]}#{hand.last[0]}.")
end

def hand_values(hand)
  card_values_of_hand = []
  hand.each { |card| card_values_of_hand << CARD_VALUES[card.last] }
  card_values_of_hand
end

def bust?(hand)
  hand_values(hand).sum > 21
end

def dealer_hand_value(d_hand)
  d_hand_values = hand_values(d_hand)
  d_hand_sum = d_hand_values.sum
  d_hand_sum += 10 if d_hand_values.any?(1) && d_hand_sum <= 11
  d_hand_sum
end

def print_winner(p_hand_val, d_hand_val)
  puts d_hand_val >= p_hand_val ? "Dealer wins" : "Player wins"
end

loop do
  deck = initialize_deck
  player_hand = initialize_hand(deck)
  dealer_hand = initialize_hand(deck)  

  choice = ''
  loop do
    choice = player_turn(player_hand, dealer_hand)
    hit_hand!(player_hand, deck) if choice == 'hit'
    break if choice == 'stay' || bust?(player_hand)
  end

  player_value = dealer_hand_value(player_hand)
  loop do
    if bust?(player_hand)
      print "Your hand is: "
      print_hand(player_hand)
      puts "You busted! Sorry :("
      break
    end
    
    print "Player has: "
    print_hand(player_hand)
    print "Dealer has: "
    print_hand(dealer_hand)
    
    dealer_value = dealer_hand_value(dealer_hand)
    if dealer_value >= 17
      print_winner(player_value, dealer_value)
      break
    else
      hit_hand!(dealer_hand, deck)
    end

    if bust?(dealer_hand)
      print "Dealer hand is: "
      print_hand(dealer_hand)
      puts "Dealer busted! You win!"
      break
    end
  end

  prompt ("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end