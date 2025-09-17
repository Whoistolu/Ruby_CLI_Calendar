require "date"

class Calendar
    def self.header(month, year)
        "     #{Date::MONTHNAMES[month]} #{year}"
    end

    def self.days_in_month(month, year)
        Date.new(year, month, -1).day
    end
end