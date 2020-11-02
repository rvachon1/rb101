=begin
# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:
#
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
#
# If no bigger number can be composed using those digits, return -1:
#
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

Inptut: int Output: Int or -1

Algorithm:

1 Generate key from numbers
  - Conver to string
  - Store in array
2 Build Test to confirm success
  - Convert int to array of strings
  - iterate through each character, checking if it exists in orignal key
  - If any don't exists, return false
3 Build test to determine if there is no answer (ie: more digits than orignal)
  -Length of key > original key
4 Iterate > Test Success > Go until No Answer

Other Students Algo: - WRONG
# - convert the integer into a string
# - separate the string into an array named digit_array
# - iterate through 2nd to the last elemetn down to the 1st element of digit_array, digit
       # - compare digit to the last digit
       # - if last digit is greater than digit, then swap
#- else return -1

Teachers ALgo:
#  - initialize number equal to input
#  - we want to check if input is already max
        # - if it is, return -1

#  - loop: add one to number
        # - check if the max of number == max input
                # if equal, return number
=end

def next_bigger?(key, int)
  boolean_map = int.to_s.chars.map do |i|
    key.include?(i)
  end
  boolean_map.none?(false)
end

# p next_bigger?(["1","2"], 21) == true
# p next_bigger?(["1","2"], 31) == false

def next_bigger(int)
  key = int.to_s.chars
  cur_int = int

  while cur_int.to_s.chars.length == key.length
    cur_int += 1
    break if next_bigger?(key, cur_int)
  end
  cur_int
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
# p next_bigger(9) == -1
# p next_bigger(111) == -1
# p next_bigger(531) == -1