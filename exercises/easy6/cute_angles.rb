DEGREE = "\xC2\xB0"
MINS_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINS_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  degrees, mod = float.divmod(1)

  mins, secs = (SECONDS_PER_DEGREE * mod).round.divmod(SECONDS_PER_MINUTE)

  # degrees.to_s + DEGREE + format("%02d", mins.to_s) + "\'" + format("%02d", secs.to_s) + "\""
  format(%(#{degrees}#{DEGREE}%02d'%02d"), mins, secs)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")