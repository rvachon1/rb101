def reverse_words(string)
  string.split(" ").map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(" ")
end

def reverse_words2(string)
  string.split(" ").map do |word|
    word.reverse! if word.length >= 5
    word
  end.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts "***************************"
puts reverse_words2('Professional')          # => lanoisseforP
puts reverse_words2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words2('Launch School')         # => hcnuaL loohcSuts reverse_words('Launch School')         # => hcnuaL loohcS