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
end
