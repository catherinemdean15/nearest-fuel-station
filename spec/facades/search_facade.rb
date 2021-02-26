require 'rails_helper'

describe SearchFacade do
  it 'returns station matching search' do
    location = '1331 17th St LL100, Denver, CO 80202'
    search = SearchFacade.search_nearest_station(location)
    expect(search).to be_a Station
    expect(search.name).to eq('Seventeenth Street Plaza')
    expect(search.address).to eq('1225 17th St. Denver CO 80202')
    expect(search.fuel_type).to eq('ELEC')
    expect(search.access_times).to be_a String
  end

  it 'returns directions for locations' do
    location1 = '1331 17th St LL100, Denver, CO 80202'
    location2 = '1225 17th St. Denver CO 80202'
    search = SearchFacade.search_directions(location1, location2)
    expect(search).to be_a Direction
    expect(search.distance).to eq(0.1)
    expect(search.travel_time).to eq('00:00:40')
    expect(search.steps).to be_an Array
  end
end
