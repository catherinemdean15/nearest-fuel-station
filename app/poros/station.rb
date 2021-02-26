class Station
  attr_reader :name, :address, :fuel_type, :access_times

  def initialize(data)
    @name = data[:fuel_stations].first[:station_name]
    @address = "#{data[:fuel_stations].first[:street_address]} #{data[:fuel_stations].first[:city]} #{data[:fuel_stations].first[:state]} #{data[:fuel_stations].first[:zip]}"
    @fuel_type = data[:fuel_stations].first[:fuel_type_code]
    @access_times = data[:fuel_stations].first[:access_days_time]
  end
end
