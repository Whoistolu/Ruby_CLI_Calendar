require 'date'

puts Date.today

year = (ARGV[1] || Date.today.year).to_i
month = (ARGV[0] || Date.today.month).to_i