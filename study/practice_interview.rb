=begin
Assume the "#" is like a backspace in string.

Intput: string
Output: string
  Rules: 
    -All #'s, return empty string ""
    -1 # backspaces 1 charcter

Examples:

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
p clean_string("#######") ==  ""

ALGO:
-Initalize reg = []
-Initalize chars to the split of the string
-Iterate through chars
  -if # then pop from reg
    -if register has nothing in it, do nothing
  -else
    -add char to reg
-reg join & convert to string
=end

def clean_string(string)
  reg = []
  chars = string.split("")
   
  chars.each do |char|
   if char == "#"
     reg.pop if reg.size != 0
   else
     reg << char
   end
  end
  reg.join("")
 end
 
 p clean_string('abc#d##c') == "ac"
 p clean_string('abc####d##c#') == ""
 clean_string("#######") ==  ""

=begin
Given two array of integers(arr1,arr2).
Your task is going to find a pair of numbers(an element in arr1, and another element in arr2)
Return the maximum and minimum difference values by an array: [ max difference, min difference ]

Input: two arrays
Output: array(max dif, min dif)
  Rules:
    - If 1 item in any array, just return difference in arry

ALGO:
-Determine Min and Max in both arrays
-Max_diff: Calculate difference of Min1 and Max2, and Max1 and Min2, choose the larger for max_dif
- Initialize min_num = nil
-Min diff: Iterate through arr1
  - calculate diff for each number
  - pull out min
  - store in min_num

=end

def max_diff(arr1, arr2)
 arr1_min = arr1.min 
 arr1_max = arr1.max
 arr2_min = arr2.min
 arr2_max = arr2.max
  
 diff1_2 = arr1_min - arr2_max
 diff2_1 = arr2_min - arr1_max
  
 diff1_2 *= -1 if diff1_2 < 0
 diff2_1 *= -1 if diff2_1 < 0
  
 diff2_1 < diff1_2 ? diff1_2 : diff2_1
end

# p max_diff([1,2,3,4,5],[6,7,8,9,10])

def min_diff(arr1, arr2)
 diff_arr = []
  
  arr1.each do |num1|
   arr2.each do |num2| 
    (num2 - num1) < 0 ? diff_arr << num1 - num2 : diff_arr << num2 - num1
   end
  end
  diff_arr.min
end

def max_and_min(arr1, arr2)
  [max_diff(arr1,arr2), min_diff(arr1, arr2)]
end


p max_and_min([3,10,5],[20,7,15,8]) == [17,2]
p max_and_min([20], [3]) == [17,17]
p max_and_min([3,10,5],[3,10,5]) == [7,0]
p max_and_min([1,2,3,4,5],[6,7,8,9,10]) == [9,1]
