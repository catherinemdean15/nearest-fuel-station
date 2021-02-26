class Direction
  attr_reader :distance, :travel_time, :steps

  def initialize(data)
    @distance = data[:route][:distance].round(1)
    @travel_time = data[:route][:formattedTime]
    @steps = find_steps(data[:route][:legs].first[:maneuvers])
  end

  def find_steps(data)
    data.map do |step|
      step[:narrative]
    end
  end
end
