VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def complete_word!(word)
  case word
  when 's'
    prompt("Do you want 'scissors' or 'spock'? ('sc' or 'sp')")
    new_choice = Kernel.gets.chomp
    word << 'cissors' if new_choice == 'sc' || new_choice == 'scissors'
    word << 'pock' if new_choice == 'sp' || new_choice == 'spock'
  when 'r'
    word << 'ock'
  when 'p'
    word << 'aper'
  when 'l'
    word << 'izard'
  else
    word
  end
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper'))
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

  computer_wins += 1 if win?(choice, computer_choice) == false
  player_wins += 1 if win?(choice, computer_choice) == true
  puts "Player has won #{player_wins} times."
  puts "Computer has won #{computer_wins} times."

  if computer_wins == 5
    puts 'The computer won the match!'
    break
  elsif player_wins == 5
    puts 'The player won the match!'
    break
  else
    prompt('Do you want to play again?')
    answer = Kernel.gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end
