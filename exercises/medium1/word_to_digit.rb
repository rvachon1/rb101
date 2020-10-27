DIGITS = {
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9",
}
def word_to_digit(string)
  digit_array = string.split.map do |word|
    DIGITS.each do |num_word, num_int|
      word.gsub!(num_word, num_int) 
    end

    word
  end

  digit_array.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'