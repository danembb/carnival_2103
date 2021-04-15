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

      expect(attendee.name).to eq('Bob')
    end

    it '#spending_money' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee.spending_money).to eq 20
    end

    it '#interests' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee.interests).to eq ([])
      attendee.add_interest('Bumper Cars')
      attendee.add_interest('Ferris Wheel')

      expect(attendee.interests).to eq (['Bumper Cars', 'Ferris Wheel'])
    end
  end
end
