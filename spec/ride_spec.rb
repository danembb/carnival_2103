require './lib/ride'
require './lib/attendee'

RSpec.describe Ride do
  describe 'instantiation' do
    it '::new' do
      ride = Ride.new({name: 'Ferris Wheel', cost: 0})

      expect(ride).to be_an_instance_of(Ride)
    end
  end
end
