require 'nokogiri'
require 'open-uri'
require 'pry'

class Weather
  # attr_accessor :weather_scraper
  def self.details(input)
 
    case input
      when "wind"
      puts	 Scraper.wind
      when "humidity"
        puts Scraper.humidity
      when "dew_point"
        puts Scraper.dew_point
      when "pressure"
        puts Scraper.pressure
      when "visibility"  
        puts Scraper.visibility
      else
        puts "Please Try Again"
    end
       
  end
 

end




