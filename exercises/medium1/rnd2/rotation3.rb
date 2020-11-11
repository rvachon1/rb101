=begin
FRESH START 
ALGO:
Iterate from 0th Digit to INT Length
  -Rotate 0th Digit
  -Freeze 0th
  -Rotate 1st Digit
  -Freeze 1st ...

SUBALGOS:
1. Rotate nth digit
    -Convert int to string to arr
    -Grab nth digit, move to end
=end

# def new_max_rot(int)
#   dig_arr = int.to_s.chars
#   counter = 0
#   limit = dig_arr.length

#   loop do
#     digit = dig_arr.delete_at(counter)
#     dig_arr.push(digit)
#     counter += 1
#     break if counter == limit
#   end
#   dig_arr.join('').to_i
# end

# p new_max_rot(735291) == 321579
# p new_max_rot(3) == 3
# p new_max_rot(35) == 53
# p new_max_rot(105) == 15 # the leading zero gets dropped
# p new_max_rot(8_703_529_146) == 7_321_609_845

=begin
OLD METHOD
=end

def rotate_arr(arr)
  arr[1..-1] + [arr[0]]
end

def int_to_arr(int)
  int.to_s.chars
end

def rotate_rightmost_digits(int, n)
  dig_arr = int_to_arr(int)
  rightmost_digits = dig_arr.last(n)
  rot_arr = rotate_arr(rightmost_digits)

  comb_arr = dig_arr.first(dig_arr.length - n) + rot_arr
  comb_arr.join("").to_i
end

def max_rotation(int)
  number_digits = int.to_s.size
  number = int

  loop do
    number = rotate_rightmost_digits(number, number_digits)
    number_digits -= 1
    break if number_digits == 0
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845