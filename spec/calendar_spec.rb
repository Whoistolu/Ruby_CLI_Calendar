require 'date'
require_relative '../calendar'

Rspec.describe Calendar do
  describe ".header" do
    it "returns the centered month and year string" do
      expect(Calendar.header(8, 2025)).to eq("     August 2025")
    end
  end

  describe ".days_in_month" do
    it "returns correct number of days including leap years" do
      expect(Calendar.days_in_month(2, 2024)).to eq(29)
      expect(Calendar.days_in_month(2, 2025)).to eq(28)
    end
  end

  describe ".weekday_offset" do
    it "returns 0 for Sunday, 1 for Monday, etc. for the first day of the month" do
      # Sept 1, 2025 is a Monday → offset should be 1
      expect(Calendar.weekday_offset(9, 2025)).to eq(1)

      # Aug 1, 2025 is a Friday → offset should be 5
      expect(Calendar.weekday_offset(8, 2025)).to eq(5)
    end
  end
end
