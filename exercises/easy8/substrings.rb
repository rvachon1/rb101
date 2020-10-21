def leading_substrings(string)
  substring = ""
  substring_array = []

  string.chars.each do |char|
    substring += char
    substring_array << substring
  end

  substring_array
end

def substrings(string)
  substring_array = []
  counter = 0

  while counter < string.length
    substring_array << leading_substrings(string[counter..string.length])
    counter += 1
  end

  substring_array.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]