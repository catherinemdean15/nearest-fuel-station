class SearchController < ApplicationController
  def index
    @location = params[:location]
    @nearest_station = SearchFacade.search_nearest_station(@location)
    @directions = SearchFacade.search_directions(@location, @nearest_station.address)
  end
end
