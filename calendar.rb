require 'date'

today = Date.today
month = today.month
year = today.year

# I try to get the first and last day of the month
first_day = Date.new(year, month, 1)
last_day  = Date.new(year, month, -1)

# I try to print the month and year
puts "#{Date::MONTHNAMES[month]} #{year}"

# I try to print the header
puts "Su Mo Tu We Th Fr Sa"

# I then try to print the leading spaces for the first week
puts "  " * first_day.wday