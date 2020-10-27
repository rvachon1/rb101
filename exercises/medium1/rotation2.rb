def rotate_rightmost_digits(number, position)
  num_array = number.to_s.chars

  num_rotate = num_array.delete_at(-position)

  num_array << num_rotate

  num_array.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

def max_rotation(number)
  num_length = number.to_s.length

  while num_length > 0
    number = rotate_rightmost_digits(number, num_length)
    num_length -= 1
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845