=begin
Problem: Create all permutations of a given string, remove duplicates

Input: "string"
Output: Array of Strings
Rules:
  -Must remove all duplicates

ALGO:
-Initalize array to hold permutations to perm_arr
-Iterate through each letter
  -Iterate selected letter through each position
    -Keep letter position locked
    -Iterate rest of characters by cyling them
      -Add word to perm_arr
-Return perm_arr w/ all duplicates removed
=end
require 'pry'

def permutations(string)
  perm_arr = []
  chars = string.chars
  c1 = 0
  c2 = 0
  c3 = 0

  while c1 < chars.length
    chars[0], chars[c1] = chars[c1], chars[0]
    c2 = 0
    while c2 < chars.length
      c3 = 0
      while c3 < chars.length
        perm_arr << chars.join("")
        chars.push(chars.delete_at(c3)) unless c3 == c2
        c3 += 1
      end
      binding.pry
      c2 += 1
      chars[c2], chars[c2-1] = chars[c2-1], chars[c2]
    end
    chars = string.chars
    c1 += 1
  end
  perm_arr.uniq.count
end

p permutations("bgunk")