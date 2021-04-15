require './lib/ride'
require './lib/attendee'

RSpec.describe do
  describe 'instantiation' do
    it '::new' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee).to be_an_instance_of(Attendee)
    end
  end
end
