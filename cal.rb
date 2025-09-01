require_relative 'lib/calendar'

calendar = Calendar.new

begin
  case ARGV.size
  when 0
    puts calendar.generate
  when 1
    puts calendar.generate(Date.today.month, ARGV[0].to_i)
  when 2
    puts calendar.generate(ARGV[0].to_i, ARGV[1].to_i)
  else
    puts 'Usage: ruby cal.rb [month] [year]'
  end
rescue ArgumentError => e
  puts "Error: #{e.message}"
  puts 'Usage: ruby cal.rb [month] [year]'
end
