def after_midnight(string)
  hours, minutes = string[0..1].to_i, string[3..4].to_i
  hours % 24 * 60 + minutes
end

def before_midnight(string)
  hours, minutes = string[0..1].to_i, string[3..4].to_i
  (1440 - hours % 24 * 60 - minutes) % 1440
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
