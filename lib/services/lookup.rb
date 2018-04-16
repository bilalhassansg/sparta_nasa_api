require 'httparty'
require 'json'

class LookupNASA
  include HTTParty

  def initialize
    @api_key = '7g3sHlv45g5EMaDJvr9FXg4uT4weGXJmOd87x7BG'
  end

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def get_lookup(lookup)
    @lookup_data = JSON.parse(self.class.get("/#{lookup}?api_key=#{@api_key}").body)
  end

  def get_link
    @lookup_data['links']['self']
  end

  def get_neo_id
    @lookup_data['neo_reference_id']
  end

  def get_estimated_diameter_min
    @lookup_data['estimated_diameter']['kilometers']['estimated_diameter_min']
  end

  def get_is_potentially_hazardous_asteroid
    @lookup_data['is_potentially_hazardous_asteroid']
  end

  def get_absolute_magnitude_h
    @lookup_data['absolute_magnitude_h']
  end

  def get_close_approach_data
    @lookup_data['close_approach_data']['close_approach_date']
  end

  def get_estimated_diameter_max
    @lookup_data['estimated_diameter']['kilometers']['estimated_diameter_max']
  end

  # def get_miss_distance
  #   @lookup_data['estimated_diameter']['miss_distance']['kilometers']
  # end
end

# ab = LookupNASA.new
# puts ab.get_lookup(2000433)
