def leading_substrings(string)
  substring = ""
  substring_array = []

  string.chars.each do |char|
    substring += char
    substring_array << substring
  end

  substring_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']