puts "==> Enter the first number:"
first_number = gets.chomp.to_i

puts "==> Enter the second number:"
second_number = gets.chomp.to_i

sum = first_number + second_number
subtraction = first_number - second_number
product = first_number * second_number
quotient = first_number / second_number
remainder = first_number % second_number
power = first_number ** second_number

puts "==> #{first_number} + #{second_number} = #{sum}"
puts "==> #{first_number} - #{second_number} = #{subtraction}"
puts "==> #{first_number} * #{second_number} = #{product}"
puts "==> #{first_number} / #{second_number} = #{quotient}"
puts "==> #{first_number} % #{second_number} = #{remainder}"
puts "==> #{first_number} ** #{second_number} = #{power}"