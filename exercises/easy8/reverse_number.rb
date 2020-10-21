def reversed_number(int)
  reversed_int = 0
  div, mod = int.divmod(10)
  
  return mod if div == 0

  loop do 
    reversed_int = reversed_int * 10 + mod
    div, mod = div.divmod(10)
    break if div == 0
  end
  
  reversed_int = reversed_int * 10 + mod

  reversed_int
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1