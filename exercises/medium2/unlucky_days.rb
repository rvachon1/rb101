require 'date'

def friday_13th(year)
  date = Date.new(year)
  days_in_year = Date.new(year + 1) - date
  365 == days_in_year ? days_in_year = 365 : days_in_year = 366
  fri_13s = 0

  days_in_year.times do
    fri_13s += 1 if date.friday? && date.day == 13
    date += 1
  end
 
  fri_13s
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Often my mind goes to the brute force method.
# Stop and think, "Is there anyway I can do this simpler?"