require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
  [1, 4, 7], [2, 5, 8], [3, 6, 9], # cols
  [1, 5, 9], [3, 5, 7]             # diagnals
]

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, delim=', ', final_delim='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then "#{array[0]} #{final_delim} #{array[-1]}"
  else
    array[-1] = "#{final_delim} #{array.last}"
    array.join(delim)
    # array_new = []
    # array[0..-2].each { |element| array_new += [element, delim ] }
    # array_new += [final_delim + ' ', array[-1]]
    # array_new.join
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd)
  brd_clone = brd.clone
  empty_squares(brd).each do |available_square|
    brd_clone[available_square] = COMPUTER_MARKER
    return available_square if detect_winner(brd_clone) == 'Computer'
    brd_clone[available_square] = INITIAL_MARKER
  end
  
  empty_squares(brd).each do |available_square|
    brd_clone[available_square] = PLAYER_MARKER
    return available_square if detect_winner(brd_clone) == 'Player'
    brd_clone[available_square] = INITIAL_MARKER
  end
  nil
end

def computer_places_piece!(brd)
  square = find_at_risk_square(brd)
  square = 5 if square.nil? && empty_squares(brd).include?(5)
  square = empty_squares(brd).sample if square.nil?
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # forceably returns boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # *line same as => line[0], line[1], line[2]
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_wins = 0
computer_wins = 0

loop do
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    player_wins += 1 if detect_winner(board) == 'Player'
    computer_wins += 1 if detect_winner(board) == 'Computer'
  else
    prompt "It's a tie!"
    player_wins += 1
    computer_wins += 1
  end

  if player_wins == 5 && computer_wins == 5
    puts "The final score is 5 - 5."
    break
  elsif player_wins == 5
    puts "You won 5 times. You are the grand winner."
    break
  elsif computer_wins == 5
    puts "The computer won 5 times. You lost the match."
    break
  else
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
