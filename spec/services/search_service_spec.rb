require 'rails_helper'

describe SearchService do
  context 'instance methods' do
    it 'can make API call to database' do
      location = '1331 17th St LL100, Denver, CO 80202'
      query = SearchService.call_for_stations(location)

      expect(query).to be_a Hash
      expect(query[:fuel_stations]).to be_an Array
      expect(query[:fuel_stations].first).to have_key :access_days_time
      expect(query[:fuel_stations].first).to have_key :station_name
      expect(query[:fuel_stations].first).to have_key :street_address
      expect(query[:fuel_stations].first).to have_key :city
      expect(query[:fuel_stations].first).to have_key :state
      expect(query[:fuel_stations].first).to have_key :zip
      expect(query[:fuel_stations].first).to have_key :fuel_type_code
    end
  end
end
