require 'pry'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit
player_cards = []
deck.keys.each do |suit|
  deck[suit].shuffle!
  player_cards << deck[suit].pop
end
p deck[:hearts].count

# Determine the score of the remaining cards in the deck
sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  # p remaining_cards
  # p remaining_cards.count
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
  # p sum
end

puts sum