require 'date'
require_relative '../calendar'

Rspec.describe Calendar do
  describe ".header" do
    it "returns the centered month and year string" do
      expect(Calendar.header(8, 2025)).to eq("     August 2025")
    end
  end
end
