class Carnival
  attr_reader :name,
              :rides,
              :attendees

  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
  end

  def add_ride(new_ride)
    @rides.push(new_ride)
  end

  def recommend_rides(attendee)
    recommended_rides = []
    @rides.find_all do |interest|
      if jeffco_fair.ride.name == @interests
        recommended_rides.push(@interests)
      end
    end
  end

  def admit(attendee)
    @attendees.push(attendee)
  end
end
