# Case 1: Not returning a false condition
# Case 2: Not handling case where more or less than 4 components should be denied

def is_an_ip_number?(ip_string)
  /^([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])$/.match?(ip_string)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("123.123.123.123")
p dot_separated_ip_address?("123.123.123.256")
p dot_separated_ip_address?("51.46.32")
p dot_separated_ip_address?("123.123.123.123.1")
