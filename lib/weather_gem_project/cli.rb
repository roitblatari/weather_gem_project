class Cli
	
	 
	
	def call
		
		puts "Weather Gem Project working"
		zip = zip_code
		if zip != "exit"
			@weather_scraper =	Scraper.new.get_weather(zip)
			@weather = Weather.current_weather
			puts "*** Your Weather Is  ***"
			puts "     "+ @weather.temperature
			puts ""
		 
		
			input = ''
			while input != "exit"
				puts "For Winds type wind"
				puts "For Humidity type humidity"
				puts "For Dew Point type dew_point"
				puts "For Pressure type pressure"
				puts "For Visibility type visibility"
				puts "For New City type search"
				puts "to Exit type exit"
				puts "
				"
				input = gets.strip
				details(input)
			end
		end
		
	end

	def details(input)
 
    case input
      when "wind"
        puts	 @weather.wind
        puts "*******
        "
      when "humidity"
        puts @weather.humidity
        puts "*******
        "
      when "dew_point"
        puts @weather.dew_point
        puts "*******
        "
      when "pressure"
        puts @weather.pressure
        puts "*******
        "
      when "visibility"  
        puts @weather.visibility
        puts "*******"
      when "search"  
    	call
      when "exit"
        return "good by"
      else
        puts "Please Try Again"
    end
  end
	def zip_code
		puts "please enter your Zip Code #?"
		input = gets.strip
		input.size == 5 || input == "exit" ? input : zip_code
	end

	
end