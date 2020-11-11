=begin
-pull right digits
  -convert to arr of strings
  -grab n digits from right
-rotate
-join array and convert to integer
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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917