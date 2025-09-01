require_relative '../cal'

RSpec.describe Calendar do
  let(:calendar) { Calendar.new }

  it "prints the current month by default" do
    today = Date.today
    output = calendar.generate(today.month, today.year)
    expect(output).to include(Date::MONTHNAMES[today.month])
    expect(output).to include(today.year.to_s)
  end

  it "prints the given month and year" do
    output = calendar.generate(8, 2025)
    expect(output).to include("August 2025")
    expect(output).to include("31")
  end

  it "aligns the first day of the month under the correct weekday" do
    output = calendar.generate(9, 2025)
    lines = output.split("\n")
    week_line = lines[2]
    expect(week_line.start_with?("   ")).to be true
  end
end
