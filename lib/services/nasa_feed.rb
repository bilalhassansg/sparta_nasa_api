require 'httparty'
require 'json'

class LookupNASA
  include HTTParty

  def initialize
    @api_key = '7g3sHlv45g5EMaDJvr9FXg4uT4weGXJmOd87x7BG'
  end


  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def get_lookup(start_date, end_date)
    @lookup_data = JSON.parse(self.class.get("/#{lookup}?api_key=#{@api_key}").body) # Finish !
  end

  def get_status_code_from_body_response
    @lookup_data['status']
  end

end
