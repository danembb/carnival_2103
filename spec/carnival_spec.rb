require './lib/carnival'
require './lib/attendee'
require './lib/ride'

RSpec.describe do
  describe 'instantiation' do
    it '::new' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair).to be_an_instance_of(Carnival)
    end
  end

  describe '#methods' do
    it '#name' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair.name).to eq("Jefferson County Fair")
    end

    it '#rides' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair.rides).to eq ([])
    end

    it '#add_ride adds rides to jeffco_fair' do
      jeffco_fair = Carnival.new("Jefferson County Fair")
      ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
      bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
      scrambler = Ride.new({name: 'Scrambler', cost: 15})
      jeffco_fair.add_ride(ferris_wheel)
      jeffco_fair.add_ride(bumper_cars)
      jeffco_fair.add_ride(scrambler)

      expect(jeffco_fair.rides).to eq([ferris_wheel, bumper_cars, scrambler])
    end

    # it '#recommend_rides to attendee' do
    #   jeffco_fair = Carnival.new("Jefferson County Fair")
    #   ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
    #   bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
    #   scrambler = Ride.new({name: 'Scrambler', cost: 15})
    #   jeffco_fair.add_ride(ferris_wheel)
    #   jeffco_fair.add_ride(bumper_cars)
    #   jeffco_fair.add_ride(scrambler)
    #   bob = Attendee.new('Bob', 20)
    #   sally = Attendee.new('Sally', 20)
    #   bob.add_interest('Ferris Wheel')
    #   bob.add_interest('Bumper Cars')
    #   sally.add_interest('Scrambler')
    #
    #   expect(jeffco_fair.recommend_rides(bob)).to eq([ferris_wheel, bumper_cars])
    #   expect(jeffco_fair.recommend_rides(sally)).to eq([scrambler])
    # end

    it '#attendees' do
      jeffco_fair = Carnival.new("Jefferson County Fair")
      ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
      bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
      scrambler = Ride.new({name: 'Scrambler', cost: 15})
      jeffco_fair.add_ride(ferris_wheel)
      jeffco_fair.add_ride(bumper_cars)
      jeffco_fair.add_ride(scrambler)

      expect(jeffco_fair.attendees).to eq([])
    end

    it '#admit admits attendees' do
      jeffco_fair = Carnival.new("Jefferson County Fair")
      ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
      bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
      scrambler = Ride.new({name: 'Scrambler', cost: 15})
      jeffco_fair.add_ride(ferris_wheel)
      jeffco_fair.add_ride(bumper_cars)
      jeffco_fair.add_ride(scrambler)
      bob = Attendee.new('Bob', 20)
      bob.add_interest('Ferris Wheel')
      bob.add_interest('Bumper Cars')
      sally = Attendee.new('Sally', 20)
      sally.add_interest('Scrambler')
      johnny = Attendee.new('Johnny', 5)
      johnny.add_interest('Bumper Cars')
      jeffco_fair.admit(bob)
      jeffco_fair.admit(sally)
      jeffco_fair.admit(johnny)

      expect(jeffco_fair.attendees).to eq([bob, sally, johnny])
    end
  end
end
