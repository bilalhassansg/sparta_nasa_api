require 'httparty'
require 'json'

class BrowseNASA
  include HTTParty

  def initialize
  @api_key = '7g3sHlv45g5EMaDJvr9FXg4uT4weGXJmOd87x7BG'

  end
  base_uri 'https://api.nasa.gov/neo/rest/v1/neo'

  def get_browse_from_page(browse)
    @browse_data = JSON.parse(self.class.get("/#{browse}?api_key=#{@api_key}").body)
  end

  def get_neo_id
    @browse_data['neo_reference_id']
  end

  def get_absolute_magnitude_h
    @browse_data['absolute_magnitude_h']
  end

  def get_estimated_diameter_min
    @browse_data['estimated_diameter']['kilometers']['estimated_diameter_min']
  end

  def get_is_potentially_hazardous_asteroid
    @browse_data['is_potentially_hazardous_asteroid']
  end

  def get_close_approach_data
    @browse_data['close_approach_data']
  end

end
