require '../calendar'

require "date"

def show_calendar(month, year)
  puts Calendar.header(month, year)
  puts "Su Mo Tu We Th Fr Sa"

  first_day = Date.new(year, month, 1)
  last_day  = Date.new(year, month, -1)

  print "   " * first_day.wday
  (1..last_day.day).each do |day|
    print day.to_s.rjust(2) + " "
    print "\n" if Date.new(year, month, day).saturday?
  end
  puts "\n"
end

month = Date.today.month
year  = Date.today.year
