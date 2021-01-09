require_relative "plane"

class Airport

  STANDARD_CAPACITY = 10

  attr_reader :plane

  attr_accessor :capacity

  def initialize(capacity = STANDARD_CAPACITY)
    @planes = []
    @capacity = capacity
  end

  def land(plane)
    fail "Airport is full" if full
    @planes.push(plane)
  end

  def take_off()
    fail "There are no planes to take off" if empty
    fail "Too stormy to take off" if weather == "stormy"
    @plane.pop
  end

  # def weather_forecast 

  #   if random_weather =< 8
  #     weather = "sunny"
  #   else
  #     weather = "stormy"
  #   end
      
  # end

  private

  def empty
    @planes.empty?
  end

  def full
    @planes.count >= @capacity
  end

  # def random_weather
  #   chance = (1..10).to_a.sample
  # end

end