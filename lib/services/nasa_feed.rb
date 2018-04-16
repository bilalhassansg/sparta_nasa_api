require 'httparty'
require 'json'

class FeedNASA
  include HTTParty

  def initialize
    @api_key = '7g3sHlv45g5EMaDJvr9FXg4uT4weGXJmOd87x7BG'
  end

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def get_feed(feed)
    @feed_data = JSON.parse(self.class.get("/#{feed}?api_key=#{@api_key}").body) # Finish !
  end

  def get_neo_id
    @feed_data['neo_reference_id']
  end

  def get_estimated_diameter_max
    @feed_data['estimated_diameter']['kilometers']['estimated_diameter_max']
  end

  def get_estimated_diameter_min_meter
    @feed_data['estimated_diameter']['meters']['estimated_diameter_min']
  end



end
