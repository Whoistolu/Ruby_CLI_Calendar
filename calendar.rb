require 'date'

today = Date.today
month = today.month
year = today.year

# I try to get the first and last day of the month
first_day = Date.new(year, month, 1)
last_day  = Date.new(year, month, -1)


# I try to print the header
puts "#{Date::MONTHNAMES[month]} #{year}"
puts "Su Mo Tu We Th Fr Sa"

# puts first_day.wday