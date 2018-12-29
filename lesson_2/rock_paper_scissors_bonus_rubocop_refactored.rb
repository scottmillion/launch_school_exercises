VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def complete_word!(word)
  hash = { 'r' => 'ock', 'p' => 'aper', 'l' => 'izard',
           'sc' => 'cissors', 'sp' => 'pock' }

  if word == 's'
    prompt("Do you want 'scissors' or 'spock'? ('sc' or 'sp')")
    new_choice = Kernel.gets.chomp
    word << hash[new_choice]
  else
    word << hash[word]
  end
end

def win?(first, second)
  win_condition = {
    'rock' => second == 'scissors' || second == 'lizard',
    'paper' => second == 'rock' || second == 'spock',
    'scissors' => second == 'paper' || second == 'lizard',
    'spock' => second == 'scissors' || second == 'rock',
    'lizard' => second == 'spock' || second == 'paper'
  }

  win_condition[first]
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie")
  end
end

def end_game_condition_met?(player_wins_count, computer_wins_count)
  if computer_wins_count == 5
    puts 'The computer won the match!'
    true
  elsif player_wins_count == 5
    puts 'The player won the match!'
    true
  else
    false
  end
end

computer_wins = 0
player_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp
    complete_word!(choice) if choice.size == 1
    break if VALID_CHOICES.include?(choice)
    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  if win?(choice, computer_choice) == true
    player_wins += 1
  elsif choice == computer_choice
    computer_wins += 1
    player_wins += 1
  else
    computer_wins += 1
  end
  puts "Player has #{player_wins} wins. Computer has #{computer_wins} wins."

  leave_game = end_game_condition_met?(player_wins, computer_wins)
  break if leave_game == true
  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end
