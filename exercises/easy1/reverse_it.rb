def reverse_senence(string)
  string
    .split(" ")
    .reverse
    .join(" ")
end

puts reverse_senence("") == ""
puts reverse_senence("Hello World") == "World Hello"
puts reverse_senence("Reverse these words") == "words these Reverse"