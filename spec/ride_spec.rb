require './lib/ride'
require './lib/attendee'

RSpec.describe Ride do
  describe 'instantiation' do
    it '::new' do
      ride = Ride.new({name: 'Ferris Wheel', cost: 0})

      expect(ride).to be_an_instance_of(Ride)
    end
  end

  describe '#methods' do
    it '#name' do
      ride = Ride.new({name: 'Ferris Wheel', cost: 0})

      expect(ride.name).to eq("Ferris Wheel")
    end

    it '#cost' do
      ride = Ride.new({name: 'Ferris Wheel', cost: 0})
require "pry"; binding.pry
      expect(ride.cost).to eq 0
    end
  end
end
