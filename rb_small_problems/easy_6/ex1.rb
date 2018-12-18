def dms(float)
  degrees = float.floor
  decimal = float - degrees
  raw_minutes = decimal * 60.0
  minutes = raw_minutes.floor
  seconds = ((raw_minutes - minutes) * 60.0).round

  if seconds == 60
    minutes += 1 
    seconds -= 60 
  end

  minutes = '0' + minutes.to_s if minutes < 10
  seconds = '0' + seconds.to_s if seconds < 10

  "#{degrees}°#{minutes}\'#{seconds}\""

end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")