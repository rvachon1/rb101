LIST = [
  "1st",
  "2nd",
  "3rd",
  "4th",
  "5th",
  "last"
]

users_numbers = []

LIST.each do |i|
  puts "==> Enter the #{i} number:"
  number = gets.chomp.to_i
  users_numbers << number
end

last_number = users_numbers.pop

if users_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{users_numbers.inspect}"
else
  puts "The number #{last_number} does NOT appear in #{users_numbers.inspect}"
end
