require_relative '../cal'

RSpec.describe Calendar do
  let(:calendar) { Calendar.new }

  it "prints the current month by default" do
    today = Date.today
    output = calendar.generate(today.month, today.year)
    expect(output).to include(Date::MONTHNAMES[today.month])
    expect(output).to include(today.year.to_s)
  end
end
