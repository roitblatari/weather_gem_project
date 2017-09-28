require 'nokogiri'
require 'open-uri'
require 'pry'

class Weather
  # attr_accessor :weather_scraper
  def self.details(input)
 
    case input
      when "wind"
        
        puts	 Scraper.wind
        puts "*******
        "
      when "humidity"
        puts Scraper.humidity
        puts "*******
        "
      when "dew_point"
        puts Scraper.dew_point
        puts "*******
        "
      when "pressure"
        puts Scraper.pressure
        puts "*******
        "
      when "visibility"  
        puts Scraper.visibility
        puts "*******
        "
      when "exit"
        return "good by"
      else
        puts "Please Try Again"
    end
       
  end
 

end




