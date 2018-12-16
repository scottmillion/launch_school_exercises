HOURS = ('00'..'23').to_a
MINUTES = ('00'..'59').to_a


def time_of_day(num)
  "#{HOURS[num / 60 % 24]}:#{MINUTES[num % 60]}"
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
p time_of_day(1300)  


