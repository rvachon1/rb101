=begin
Problem:
-Convert RGB to Hexidecimal

Input: three integers
Output: Hex color string equivalient 

Rules:
  -If number is greater than 255, change to 255
  -If number is less than 0, change to 0
  -Assume all number will be positive or negative integers
  
ALGO:
-check if all numbers are greater than 0 or less than 255, if not adjust accordingly
-Calculate base 16 of number
-String them together
=end

def base16(num)
  num = if num > 255
          255
        elsif num < 0
          0
        else
          num
        end
  base16 = num.to_s(16).upcase

  base16.size == 1 ? "0" + base16 : base16
end

def rgb(r, g, b)
  base16(r) + base16(g) + base16(b)
end

p rgb(0, 0, 0)
p rgb(173, 255, 47)