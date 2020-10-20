# Understaning the PROBLEM
# Questions:
# 1. Are inputs always single words or can we expect sentences?
# input: string
# output: Array of strings
# Rules:
#     Explicit Rules:
#       -Input strings are all single strings
#       -Palindromes are CASE SENSITIVE
#     Implicit Rules:
#       -If no string is input OR no palindromes are found, return an EMPTY array
#       -If there are nested palindromes, return each one as a separate item in the return array

# DATA STRUCTURE / ALGORITHM
# - Initialize palindromes array to hold all confirmed palindromes
# - def substring(string) - Identify and store all substrings in the given string. Store in array. ***HARD***
#     - Loop 1: Iterate through string indexes from index 0 to 2nd last letter
#         - Loop 2: For each Index - Iterate through word adjustings lengths from: 2 to length of word
#             - Add each word to the substrings array
#             - Iterate by one
# - Iterate through each substring checking if they're palindromes
# - Appened each confirmed palindrome to our palindaromes array
# - Return palindromes array

def substrings(str)
  index = 0
  substrings = []
  
  while index < (str.length - 1) # Index Loop
    size = 2
    while size <= (str.length - index) # String length loop
      substrings << str[index, size]
      size += 1
    end
    index += 1
  end

  substrings
end

def palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  palindromes = []
  substrings = substrings(str)
  
  substrings.each do |substring|
    palindromes << substring if palindrome?(substring)
  end

  palindromes
end

p palindrome_substrings("ryanvahcon")
p palindrome_substrings("racecar")
p palindrome_substrings("momdadmom")
p palindrome_substrings("ryanmomryan")
p palindrome_substrings("")
