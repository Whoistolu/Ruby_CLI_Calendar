require "date"

class Calendar
    def self.header(month, year)
        "     #{Date::MONTHNAMES[month]} #{year}"
    end
end