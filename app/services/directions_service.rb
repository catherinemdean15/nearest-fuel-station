class DirectionsService
  class << self
    def call_for_directions(start_address, end_address)
      response = conn.get("/directions/v2/route?key=J7awB9ajQGoAakRx4aFEfeeGr4Vb0bo3&from=#{start_address}&to=#{end_address}")
      parse_data(response)
    end

    private

    def conn
      Faraday.new('http://www.mapquestapi.com')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
