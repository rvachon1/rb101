PUNCTUATION = %w(. ! ?)
BOOK = 'frankenstein.txt'
words = []

File.open(BOOK).each do |line|
  line.split.each do |word|
    words << word      
  end
end

sentence = []
word_hash = {}

words.each do |word|
  sentence << word
  if PUNCTUATION.include?(word[-1])
    word_hash[sentence.length] = sentence.join(" ")
    sentence = []
  end
end

puts "The long sentence has #{word_hash.keys.max} words."\
     " Here it is:\n\n#{word_hash[word_hash.keys.max]}"