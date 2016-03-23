require 'yahoo_weatherman'
client = Weatherman::Client.new
weather = client.lookup_by_location('60957')
weather.inspect