class Weather

  def initialize(lat, lng)
    @lat = lat.to_s
    @lng = lng.to_s
  end

  def get_weather
    response = HTTParty.get('https://api.darksky.net/forecast/' + ENV['WEATHER_API_KEY'] + '/' + @lat + ',' + @lng)
    {'currently': response['currently']['summary'], 'icon': response['currently']['icon'], 'temperature': response['currently']['temperature'], 'min': response['daily']['data'][0]['temperatureMin'], 'max': response['daily']['data'][0]['temperatureMax']}
  end

end
