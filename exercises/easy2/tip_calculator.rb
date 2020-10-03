print "What is the bill? "
bill_amount = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip_amount = (bill_amount * tip_percentage / 100).round(2)
total = (bill_amount + tip_amount).round(2)

puts "\nThe tip is $#{tip_percentage}"
puts "The total is $#{total}"