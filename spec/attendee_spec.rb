require './lib/ride'
require './lib/attendee'

RSpec.describe do
  describe 'instantiation' do
    it '::new' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee).to be_an_instance_of(Attendee)
    end
  end

  describe '#methods' do
    it '#name' do
      attendee = Attendee.new('Bob', 20)
require "pry"; binding.pry
      expect(attendee.name).to eq('Bob')
    end
  end
end
