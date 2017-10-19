class Scraper
 	def get_page(input)
 		@@doc = Nokogiri::HTML(open("https://weather.com/weather/today/l/#{input}"))
 	end
	def get_weather(input)		
 		temp = self.get_page(input).css("div.today_nowcard-temp > span").text	
		# binding.pry 
		weather = Weather.new(temp) 
		scrape_weather_details(weather)
	end
	
	def scrape_weather_details(weather)
		weather.humidity = @@doc.css(" div.today_nowcard-sidecar.component.panel > table > tbody > tr:nth-child(2) > td > span > span").text
	
		weather.dew_point = @@doc.css(" div.region.region-hero-left > div > section > div.today_nowcard-sidecar.component.panel > table > tbody > tr:nth-child(3) > td > span").text
	
		weather.pressure = @@doc.css(" div.today_nowcard-sidecar.component.panel > table > tbody > tr:nth-child(4) > td > span").text
	
		weather.wind = @@doc.css("div.today_nowcard-sidecar.component.panel > table > tbody > tr:nth-child(1) > td >span").text
	
		weather.visibility = @@doc.css("div.hero-flex.styles-wObl3f15__heroFlex__3qeiJ > div.region.region-hero-left > div > section > div.today_nowcard-sidecar.component.panel > table > tbody > tr:nth-child(5) > td > span").text


	end
end


