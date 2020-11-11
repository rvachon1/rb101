=begin
Problem:
 - Given a list of strings, determin the FFC weights and place them in order
 
Input: String
Output: String
Rules:
  - The sum of the numbers digits is it's 'weight'
  - Strings to be ordered by 'weight'
  - Empty string should return empty string
  - If same 'weight' sort by string
  - If strings are the same, they should both be in the final string
  
ALGO:
-Split string into array of strings
-Sort it by the sum of the digits
-If sum is the same, fall back to sorting by string order
=end

def order_weight(string)
  sort_arr = string.split(" ").sort do |num1, num2|
    sum1 = num1.to_i.digits.sum
    sum2 = num2.to_i.digits.sum
    
    sum1 != sum2 ? sum1 <=> sum2 : num1 <=> num2
  end
 sort_arr.join(" ") 
end

p order_weight("103 123 4444 99 2000")