MINS_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(input_mins)
  hours, mins = input_mins.divmod(MINS_PER_HOUR)
  days, hours = hours.divmod(HOURS_PER_DAY) if hours >= HOURS_PER_DAY || hours <= -HOURS_PER_DAY

  hours += HOURS_PER_DAY if input_mins < 0 && hours < 0

  if hours < 10 && mins < 10
    "0" + hours.to_s + ":" + "0" + mins.to_s
  elsif hours < 10 && mins >= 10
    "0" + hours.to_s + ":" + mins.to_s
  elsif hours > 10 && mins < 10
    hours.to_s + ":" + "0" + mins.to_s
  elsif hours > 10 && mins >= 10
    hours.to_s + ":" + mins.to_s
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(4231) == "22:31" 
