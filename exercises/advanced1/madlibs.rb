WORD_HASH = {
  adjectives: %w(quick lazy sleepy ugly),
  nouns: %w(fox dog head leg),
  verbs: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly)
}

text = File.read('madlibs.txt')

text.gsub!(/\%\{adjective\}/, WORD_HASH[:adjectives].sample)
text.gsub!(/\%\{noun\}/, WORD_HASH[:adjectives].sample)
text.gsub!(/\%\{verb\}/, WORD_HASH[:adjectives].sample)
text.gsub!(/\%\{adverb\}/, WORD_HASH[:adjectives].sample)

puts text

# text_arr = text.split(" ").map! do |word|
#   case word
#   when "%{adjective}"
#     WORD_HASH[:adjectives].sample
#   when "%{noun}"
#     WORD_HASH[:nouns].sample
#   when "%{verb}"
#     WORD_HASH[:verbs].sample
#   when "%{adverb}"
#     WORD_HASH[:adverb].sample
#   else
#     word
#   end
# end

# puts text_arr.join(" ")