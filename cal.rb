require 'date'

class Calendar
    def initialize
        @today = Date.today
        @year = @today.year
        @month = @today.month
        @day = @today.day
    end
end
