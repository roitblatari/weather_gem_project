
class Weather
  attr_accessor :wind, :humidity, :dew_point, :pressure, :visibility, :weather_scraper, :temperature
  
  @@current_weather = nil
  @@all = []
  def initialize(temp)
    @temperature = temp
    @@all << self
    @@current_weather = self
  end
 def self.all
   @@all
 end
  def self.current_weather
    @@current_weather
  end

  
end




