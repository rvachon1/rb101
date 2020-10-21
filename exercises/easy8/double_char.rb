CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def repeater(string)
#   doubled_string = []

#   string.chars.each do |char|
#     doubled_string << char + char
#   end

#   doubled_string.join
# end

def double_consonants(string)
  string2consonants = ""

  string.chars.each do |char|
    CONSONANTS.include?(char.downcase) ? string2consonants << char * 2 : string2consonants << char
  end

  string2consonants
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""