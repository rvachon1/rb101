WINNING_COMBINATIONS = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]

who_first = ""

def prompt(message)
  puts "=> #{message}\n\n"
end

def new_game
  board = []
  9.times { |i| board << (i + 1) }
  board
end

def display_board(board)
  puts(
    "    #{board[0]} | #{board[1]} | #{board[2]}
    ---------
    #{board[3]} | #{board[4]} | #{board[5]}
    ---------
    #{board[6]} | #{board[7]} | #{board[8]}\n\n"
  )
end

def one_to_nine?(move)
  /[1-9]/.match?(move)
end

def spot_available?(board, move)
  board[move.to_i - 1] == (move.to_i)
end

def valid_move?(board, move)
  one_to_nine?(move) && spot_available?(board, move)
end

def request_users_move!(board)
  users_move = ""
  loop do
    prompt("Please enter your move:")
    users_move = gets.chomp
    break if valid_move?(board, users_move)
    prompt("Invalid move! Please try again!")
  end
  prompt("Nice move!")
  board[users_move.to_i - 1] = "X"
end

def computers_move!(board)
  comp_move = board
              .select { |i| i.is_a?(Integer) }
              .sample
  board[comp_move - 1] = "O"
  prompt("Computer chooses: #{comp_move}!")
end

def winner?(board)
  WINNING_COMBINATIONS.detect do |combination|
    (board[combination[0] - 1] == board[combination[1] - 1]) &&
      (board[combination[1] - 1] == board[combination[2] - 1])
  end
end

def board_full?(board)
  if board.any? { |i| i.is_a?(Integer) }
    false
  else
    true
  end
end

def board_checker(board)
  if winner?(board).is_a?(Array)
    board[winner?(board)[0] - 1]
  elsif board_full?(board)
    "draw"
  end
end

def who_won(board)
  case board_checker(board)
  when "X"
    display_board(board)
    prompt("CONGRATULATIONS, YOU WON!")
    "X"
  when "O"
    display_board(board)
    prompt("Game over. You LOSE!")
    "O"
  when "draw"
    display_board(board)
    prompt("IT'S A DRAW!")
    "draw"
  end
end

########## Start the game ##########
loop do
  loop do
    prompt("Let's play Rock, Paper, Scissors!")
    prompt("Who do you want to go first? Press M for Me or C for Computer!")
    who_first = gets.chomp

    case who_first.downcase
    when "m"
      prompt("All right, you're up!")
      break
    when "c"
      prompt("Computer it is!")
      break
    else
      prompt("Invalid entry. Try again!")
    end
  end

  game_board = new_game()

  if who_first.downcase == "m"
    loop do
      display_board(game_board)
      request_users_move!(game_board)
      break if !who_won(game_board).nil?
      computers_move!(game_board)
      break if !who_won(game_board).nil?
    end
  elsif who_first.downcase == "c"
    loop do
      computers_move!(game_board)
      display_board(game_board)
      break if !who_won(game_board).nil?
      request_users_move!(game_board)
      break if !who_won(game_board).nil?
    end
  else
    prompt("Invalid entry. Goodbye!")
  end

  play_again = ""
  loop do
    prompt("Do you want to play again? (Y/N)")
    play_again = gets.chomp
    break if play_again.downcase == "n" || play_again == "y"
    prompt("Invalid entry")
  end
  break if play_again.downcase == "n"
end