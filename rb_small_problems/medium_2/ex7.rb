DAYS_OF_THE_WEEK = %w( Sunday Monday Tuesday Wednesday Thursday Friday Saturday )
ZELLER_MONTH_VALUE = { January: 11, February: 12, March: 1, April: 2, May: 3, June: 4, 
        July: 5, August: 6, September: 7, October: 8, November: 9, December: 10 }

def current_day_of_the_week(day, month, year)
  first_two = year.to_s[0..1].to_i
  last_two = year.to_s[-2..-1].to_i
  last_two -= 1 if month == 'January' || month == 'February'
  last_two = 99 if last_two == -1
  first_two -=1 if (month == 'January' || month == 'February') && last_two == 99
  f = day + ((13 * ZELLER_MONTH_VALUE[month.to_sym] - 1) / 5).floor \
      + last_two + (last_two / 4).floor + (first_two / 4).floor - (2 * first_two)
  DAYS_OF_THE_WEEK[(f % 7)]
end

def friday_13th(year)
  counter = 0
  ZELLER_MONTH_VALUE.keys.each do |key|
    counter += 1 if current_day_of_the_week(13, key.to_s, year) == 'Friday'
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2