class SearchFacade
  class << self
    def search_nearest_station(location)
      data = SearchService.call_for_stations(location)
      Station.new(data)
    end

    def search_directions(start_address, end_address)
      data = DirectionsService.call_for_directions(start_address, end_address)
      Direction.new(data)
    end
  end
end
