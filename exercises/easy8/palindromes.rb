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

def palindrome?(string)
  string == string.reverse && string.length >= 1
end

def palindromes(string)
  palindromes = []
  substring_array = substrings(string)

  substring_array.each do |substring|
    palindromes << substring if palindrome?(substring)
  end

  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]