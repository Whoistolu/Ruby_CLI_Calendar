require 'date'

class Calendar
  def generate(month = Date.today.month, year = Date.today.year)
    raise ArgumentError, 'Invalid month' unless (1..12).include?(month)

    first_day = Date.new(year, month, 1)
    last_day  = Date.new(year, month, -1)

    header = "     #{Date::MONTHNAMES[month]} #{year}"
    weekdays = 'Su Mo Tu We Th Fr Sa'

    output = [header, weekdays]

    line = '   ' * first_day.wday
    (1..last_day.day).each do |day|
      line << day.to_s.rjust(2) + ' '
      if Date.new(year, month, day).saturday?
        output << line.rstrip
        line = ''
      end
    end
    output << line.rstrip unless line.empty?

    output.join("\n")
  end
end
