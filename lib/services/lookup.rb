require 'httparty'
require 'json'

class LookupNASA
  include HTTParty

  def initialize
    @api_key = '7g3sHlv45g5EMaDJvr9FXg4uT4weGXJmOd87x7BG'
  end


  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def get_lookup(lookup)
    @lookup_data = JSON.parse(self.class.get("/#{lookup}?api_key=#{@api_key}").body) # Finish !
  end

  def get_status_code_from_body_response
    @lookup_data['status']
  end

  def get_estimated_diameter_min
    @lookup_data['links']['estimated_diameter']['estimated_diameter_min']
  end

  def get_is_potentially_hazardous_asteroid
    @lookup_data['links']['s_potentially_hazardous_asteroid']
  end

end

ab = LookupNASA.new
puts ab.get_lookup(2000433)
