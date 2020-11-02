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

ALGO
- int_arr = int.digits - create array of digits in int for checking for next_big
- next_big = false
- max_num = Number.digits.sort b<=>a.join('').to_i
- Is max_num == int? > if yes return -1

- Loop: Iterating by 1 - while check == false
  - break if same digits
  - cur_int += 1

SUB_ALGO: same digits check? - returning false positives. cur_int gets mutliple positives. ONLY ONE POSITIVE PER DIGIT.
-next_big = true
- Loop through cur_int.digits
  -int_arr.include?(char) - check if each char is included in original number
    - if it is NOT included, next_big = false


return next_big
=end

def next_big(int)
  int_arr = int.digits
  next_big = false
  max_num = int.digits.sort { |a, b| b <=> a }.join("").to_i
  return -1 if max_num == int
  cur_int = int

  while next_big == false
    next_big = true
    cur_int += 1
    test_arr = int_arr

    cur_int.digits.each do |i|
      test_arr.include?(i) ? test_arr.delete(i) : next_big = false
      next_big = true if test_arr.length == 0
    end
  end
  cur_int
end

p next_big(12)
p next_big(513)
p next_big(2017)
p next_big(9)
p next_big(111)
p next_big(531)


# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
#
# If no bigger number can be composed using those digits, return -1:
#
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1