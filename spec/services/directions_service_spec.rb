require 'rails_helper'

describe DirectionsService do
  context 'instance methods' do
    it 'can make API call to database' do
      location1 = '1331 17th St LL100, Denver, CO 80202'
      location2 = '1225 17th St. Denver CO 80202'

      query = DirectionsService.call_for_directions(location1, location2)
      expect(query).to be_a Hash
      expect(query[:route][:distance]).to be_a Float
      expect(query[:route][:formattedTime]).to be_a String
      expect(query[:route][:legs].first[:maneuvers]).to be_an Array
    end
  end
end
