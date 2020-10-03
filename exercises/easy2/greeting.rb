print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "HEY, #{name.upcase} WHY ARE WE SHOUTING" 
else
  puts "Hey, #{name.capitalize}."
end
