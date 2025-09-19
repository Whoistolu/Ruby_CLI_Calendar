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

loop do
  system("clear")
  show_calendar(month, year)
  puts "\nCommands: [n]ext, [p]revious, [g]oto MM YYYY, [q]uit"
  print "> "

  input = $stdin.gets&.strip
  break if input.nil? || input.downcase == "q"

  case input.downcase
  when "n"
    month += 1
    if month > 12
      month = 1
      year += 1
    end
  when "p"
    month -= 1
    if month < 1
      month = 12
      year -= 1
    end
  when /^g\s*(\d{1,2})\s+(\d{4})$/
    m, y = $1.to_i, $2.to_i
    if (1..12).include?(m)
      month, year = m, y
    else
      puts "Invalid month."
      sleep 1
    end
  else
    puts "Unknown command."
    sleep 1
  end
end

puts "Goodbye!"