print "Please write a word or multiple words: "
word = gets.chomp

word_length = word.delete(' ').size 

puts "There are #{word_length} characters in '#{word}'."