=begin
Problem:
-Write a method to determine if a word is a palindrome, without using the reverse method

ALGO:
-Reverse String
  -Intialize rev_str_arr to an empty array
  -Conert str_arg to an array of characters called str_arr
  -Iterate through str_arr
    -#unshift each element into rev_str_arr
  -return rev_str_arr joined as a string
-Compare str to str_rev
=end

def reverse_string(str)
  rev_str_arr = []
  str_arr = str.chars
  
  str_arr.each { |char| rev_str_arr.unshift(char) }
  
  rev_str_arr.join("")
end

def palindrome?(str)
  str == reverse_string(str)
end

p palindrome?("ryan")
p palindrome?("racecar")
