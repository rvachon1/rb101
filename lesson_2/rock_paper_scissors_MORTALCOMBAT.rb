OPTIONS = %w(rock paper scissors lizard spock)
ABREVIATIONS = {
  "r" => "rock",
  "p" => "paper",
  "s" => "scissors",
  "l" => "lizard",
  "k" => "spock"
}
FATALITIES = {
  scissors: "CHOP CHOP CHOP. You're sliced to shreads!!",
  paper: "Help... HELP!! I CAN'T BREATH!!!",
  rock: "SMASH! A giant boulder flys out of the sky CRUSHING YOU!",
  lizard: "Your skin starts to boil as the poison flows through you...",
  spock: "Vvvrrrooooommmm. You vanish into a thin cloud of smoke... Muahahaha.."
}
WIN_CONDITIONS = {
  scissors: ["paper", "lizzard"],
  paper: ["rock", "spock"],
  rock: ["lizard", "scissors"],
  lizard: ["spock", "paper"],
  spock: ["scissors", "rock"]
}

$player_score = 0
$comp_score = 0
user_choice_abr = ""

def display_message(message)
  puts("=> #{message}\n\n")
end

def win?(first, second)
  WIN_CONDITIONS[first.to_sym].include?(second)
end

def determine_winner!(first, second)
  if first == second
    "tie"
  elsif win?(first, second)
    $player_score += 1
    "player"
  else
    $comp_score += 1
    "comp"
  end
end

def dispaly_results(user_choice, comp_choice, winner)
  display_message("You chose #{user_choice.upcase},"\
                  "and the Computer chose: #{comp_choice.upcase}!")
  case winner
  when "tie"
    display_message("It's a... TIE!")
    display_message("You're lucky... Run while you're still ALIVE!!")
  when "player"
    display_message(FATALITIES[user_choice.to_sym])
    display_message("YOU WIN!!!")
  when "comp"
    display_message(FATALITIES[comp_choice.to_sym])
    display_message("GAME OVER... YOU LOSE!!")
  end
end

# ********** GAME STARTS HERE **********

loop do
  loop do
    print("Choose one of: ")
    ABREVIATIONS.each { |abr, name| print("#{abr} - #{name} ") }
    print("\n")
    user_choice_abr = gets.chomp

    break if ABREVIATIONS.key?(user_choice_abr)
    display_message("Invalid choice! Try again.")
  end

  user_choice = ABREVIATIONS[user_choice_abr]
  comp_choice = OPTIONS.sample

  winner = determine_winner!(user_choice, comp_choice)
  dispaly_results(user_choice, comp_choice, winner)

  display_message("Player: #{$player_score}, Computer: #{$comp_score}")
  display_message("Want to play again? (Y/N)")
  play_again = gets.chomp
  break if play_again.downcase != "y"
end

display_message("Thank you for playing. Goodbye!")