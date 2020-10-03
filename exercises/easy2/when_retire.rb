require 'date'

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
age_retire = gets.chomp.to_i

years_to_retirement = age_retire - age
retirement_year = years_to_retirement + Date.today.year

puts "\nIt's #{Date.today.year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"