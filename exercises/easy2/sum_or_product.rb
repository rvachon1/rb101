def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
integer = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp

case choice
when "s"
  result = (1..integer).reduce(:+)
  puts "The sum of the integers between 1 and #{integer} is #{result}."
when "p"
  result = (1..integer).reduce(:*)
  puts "The product of the integers between 1 and #{integer} is #{result}."
else
  puts "Invalid entry."
end
