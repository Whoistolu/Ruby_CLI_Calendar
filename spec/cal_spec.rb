require_relative '../cal'

RSpec.describe Calendar do
  describe '#initialize' do
    it 'creates an instance of Calendar' do
      calendar = Calendar.new
      expect(calendar).to be_an_instance_of(Calendar)
    end
  end
end
