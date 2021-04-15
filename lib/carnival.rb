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

  # def recommend_rides(attendee)
  #   rides_for_attendees = []
  #   rides_for_attendees << @interests.attendee
  #   @interests.attendee

  def admit(attendee)
    @attendees.push(attendee)
  end
end
