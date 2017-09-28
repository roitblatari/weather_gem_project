require 'nokogiri'
require 'open-uri'
require 'pry'

class Cli
	
	 attr_accessor :wind, :humidity, :dew_point, :pressure, :visibility, :weather_scraper
	
	def call
		
		puts "Weather Gem Project working"
		@weather_scraper =	Scraper.new.get_weather(zip_code)
		input = ''
		while input != "exit"
			puts "For Winds type wind"
			puts "For Humidity type humidity"
			puts "For Dew Point type dew_point"
			puts "For Pressure type pressure"
			puts "For Visibility type visibility"
			puts "to Exit type exit"
			puts "
				"
			input = gets.strip
			Weather.details(input)
		end
		
	end
	def zip_code
		puts "please enter your Zip Code #?"
		input = gets.strip
	end

	
end