require 'date'

puts Date.today

year = (ARGV[1] || Date.today.year).to_i
month = (ARGV[0] || Date.today.month).to_i

first_day = Date.new(year, month, 1)
last_day  = Date.new(year, month, -1)

puts "     #{Date::MONTHNAMES[month]} #{year}"
puts "Su Mo Tu We Th Fr Sa"

print "   " * first_day.wday

(1..last_day.day).each do |day|
  print day.to_s.rjust(2)
  print " "
  if Date.new(year, month, day).saturday?
    print "\n"
  end
end

print "\n"