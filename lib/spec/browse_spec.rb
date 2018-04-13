require 'spec_helper'

describe 'BrowseSpec' do
  context 'Requesting information on the browse page works correctly' do

    before(:all) do
      @browse_page = Postcodesio.new.multiple_postcode_service
      @browse_page.get_browse_from_page(@browse_data)
    end

    it 'should respond with a status of 200' do
      expect(@postcode_multiple.get_status_code_from_body_response).to eq 200
    end

  end

end
