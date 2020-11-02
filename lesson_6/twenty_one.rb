NUMBERS = ("2".."10").to_a + ["A", "J", "Q", "K"]
SUITS = ["s", "c", "d", "h"]
VALUES = {
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "J" => 10,
  "Q" => 10,
  "K" => 10,
  "A" => 1,
  "A-high" => 11
}
game_state = {
  deck: [],
  player: [],
  dealer: [],
  player_total: 0,
  dealer_total: 0,
  winner: :none
}

def prompt(message)
  puts "==> " + message + "\n\n"
end

def print_totals(game_state)
  prompt("Dealer: #{game_state[:dealer_total]}"\
          " Player: #{game_state[:player_total]}")
end

def initialize_deck
  deck = []

  SUITS.each do |suit|
    NUMBERS.each do |number|
      deck << number + "_" + suit
    end
  end
  deck
end

def deal_cards!(deck)
  deck.shuffle!

  {
    deck: deck,
    player: [deck.pop, deck.pop],
    dealer: [deck.pop, deck.pop],
    player_total: 0,
    dealer_total: 0,
    winner: :none
  } # Set inital game_state
end

def points_adder(cards)
  values = []

  cards.each do |card|
    values << VALUES[card.split("_")[0]]
  end
  values.reduce(&:+)
end

def ace_handler(cards)
  ace_index = cards.index(cards.detect do |card|
                            card =~ /A/
                          end) # Grab first A

  cards[ace_index].gsub!(/A/, "A-high") # Convert A to A-high

  if points_adder(cards) >= 21 # If bust
    cards[ace_index].gsub!(/A-high/, "A") # Revert to A
  end

  points_adder(cards)
end

def calc_total(game_state, player)
  cards = game_state[player]

  total = if cards.any? { |card| card.match(/A/) } # Check for A
            ace_handler(cards.clone.map(&:clone))
          else # IF NO ACE
            points_adder(cards)
          end

  game_state[(player.to_s + "_total").to_sym] = total
end

def display_cards(game_state)
  prompt("=====")
  prompt("Dealer shows: #{game_state[:dealer][0]} & _ ")
  print("==> You show: ")
  game_state[:player].each_with_index do |card, index|
    print card
    print " & " if index != (game_state[:player].length - 1)
    print "\n\n" if index == (game_state[:player].length - 1)
  end
  calc_total(game_state, :player)
  calc_total(game_state, :dealer)
  print_totals(game_state)
  prompt("======")
end

def hit_or_stay
  choice = ""
  loop do
    prompt("Would you like to HIT or STAY?")
    choice = gets.chomp.downcase
    break if (choice == "hit") || (choice == "stay")
    prompt("Invalid choice. Choose HIT or STAY")
  end
  choice
end

def hit(game_state, player)
  game_state[player].push(game_state[:deck].pop)
end

def bust?(game_state, player)
  if calc_total(game_state, player) > 21
    winner = player == :player ? :dealer : :player
    game_state[:winner] = winner
    true
  else
    false
  end
end

def players_turn(game_state)
  loop do
    display_cards(game_state)
    choice = hit_or_stay
    hit(game_state, :player) if choice == "hit"
    break if (bust?(game_state, :player)) || (choice == "stay")
  end
end

def dealers_turn(game_state)
  loop do
    break if calc_total(game_state, :dealer) >= 17
    hit(game_state, :dealer)
    break if bust?(game_state, :dealer)
  end
end

def who_won(game_state)
  return game_state[:winner] if game_state[:winner] != :none

  if game_state[:player_total] > game_state[:dealer_total]
    game_state[:winner] = :player
  elsif game_state[:player_total] < game_state[:dealer_total]
    game_state[:winner] = :dealer
  else
    game_state[:winner] = :draw
  end
  game_state[:winner]
end

def declare_winner(game_state)
  print_totals(game_state)
  case game_state[:winner]
  when :player then prompt("CONGRATULATIONS, YOU WON!!!")
  when :dealer then prompt("The DEALER won.")
  when :draw then prompt("DRAW! No winner...")
  end
end

def play_again?
  choice = ""
  loop do
    prompt("--------------------------------")
    prompt("Do you want to play again? (Y/n)")
    choice = gets.chomp.downcase
    break if (choice == "y") || (choice == "n")
    prompt("Invalid entry! Enter Y or n")
  end
  choice == "y"
end

def intro
  prompt("Let's play 21!")
  prompt("Suffling...")
  sleep(1)
end

# Start Game
loop do
  intro
  deck = initialize_deck
  game_state = deal_cards!(deck)
  players_turn(game_state)
  dealers_turn(game_state) if game_state[:winner] == :none
  who_won(game_state)
  declare_winner(game_state)
  break if !play_again?
end
