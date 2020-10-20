MINS_PER_HOUR = 60
HOURS_PER_DAY = 24
MINS_PER_DAY = MINS_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_string)
  hours = time_string[0..1].to_i
  mins = time_string[3..4].to_i

  return 0 if time_string == "24:00"
  hours * MINS_PER_HOUR + mins
end

def before_midnight(time_string)
  return 0 if time_string == "24:00" || time_string == "00:00"
  MINS_PER_DAY - after_midnight(time_string)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0