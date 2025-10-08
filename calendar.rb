require 'date'

puts Date.today

year = (ARGV[1] || Date.today.year).to_i
month = (ARGV[0] || Date.today.month).to_i

first_day = Date.new(year, month, 1)
last_day  = Date.new(year, month, -1)