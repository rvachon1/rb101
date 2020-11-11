=begin
Problem:
Find all of the anagrams of the given word

Input: "string", [ array of strings]
Output: [array of anagrams]
Rules:
  - find anagrams of "string" in [array of strings]
  - if no anagrams, return an empty string

ALGO:
-Initalize empty array as ana_arr
-Iterate through  [array of strings] to SELECT anagrams
  -split each word into characters
  -every character in element MUST be in "string"
  -if matach, put in ana_arr

-return ana_arr
=end

def anagrams(key, words)
  words.select do |word|
    key_c = key.clone
    word.chars.all? { |char| key_c.sub!(char, "") }
  end
end

word2 = "abba"
result2 = ["aabb", "bbaa", "abab", "baba", "baab"]
wrong2 = ["abcd", "abbba", "baaab", "abbab", "abbaa", "babaa"]

p anagrams(word2, result2 + wrong2)