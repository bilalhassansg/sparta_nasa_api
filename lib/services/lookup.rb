require 'httparty'
require 'json'

class LookupNASA
  include HTTParty

  @api_key = '7g3sHlv45g5EMaDJvr9FXg4uT4weGXJmOd87x7BG'
  base_uri 'https://api.nasa.gov/api.html#NeoWS'

  def get_lookup(lookup)
    @lookup_data = JSON.parse(self.class.post # Finish !
  end

  def get_status_code_from_body_response
    @lookup_data['status']
  end

end
