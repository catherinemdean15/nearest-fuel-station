class SearchService
  class << self
    def call_for_stations(location)
      response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=8Gv9HeJQuyG7y3RlfAvE6hViXwKmV8yxlipOgmSX&location=#{location}")
      parse_data(response)
    end

    private

    def conn
      Faraday.new('https://developer.nrel.gov')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
