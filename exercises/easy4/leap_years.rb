# Leap years occur on years that are evenly divisible by 4
# EXCEPT if year is ALSO % 100 = 0 unless 400 % = 0

# def leap_year?(year)
#   if year % 4 == 0
#     return true if year % 400 == 0
#     return false if year % 100 == 0
#     true
#   else
#     false
#   end
# end

def leap_year?(year)
  if year > 1752
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    else
      year % 4 == 0
    end
  else
    year % 4 == 0
  end
end



p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true