=begin
Input: array of positive and negative integers
Output: array consisting of the max sum subarray
  Rules: 
    - If only positive numbers, return sum
    - If only negative numbers, return 0
    - Subarray must be contiguous

ALGO:
- If only positve, return sum
- If only negative, return 0

Option 1: Brute Force
- Determine all subarrays in Method sub_arrays(arr)
  -Initalize counter = 0
  -initalize sub_arr
  -Iterate through arr
    -From 1 up to Length arr
      -select sub array
      -push to sub_arrs
    
- Select the max sum (reduce method)

=end

def sub_arrays(arr)
  arr = arr.map(&:clone)
  sub_arr = []

  while arr.size > 0
    arr.size.times do |i|
      sub_arr << arr[0..i]
    end
    arr.shift
  end
  sub_arr
end

def max_sequence(arr)
  return 0 if (arr == []) || (arr.all? { |i| i < 0 })
  return arr.sum if arr.all? { |i| i > 0 }

  sub_arrs = sub_arrays(arr)

  max_sub = sub_arrs.reduce { |memo, sub_arr| memo.sum > sub_arr.sum ? memo : sub_arr }
  max_sub.reduce(&:+)
end


p sub_arrays([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
