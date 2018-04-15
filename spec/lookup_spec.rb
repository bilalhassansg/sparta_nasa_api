require 'spec_helper'

describe 'NASALookup' do
  context 'Requesting information on the Nasa Lookup page' do

    before(:all) do
      @nasa_lookup = Postcodesio.new.multiple_postcode_service
      @nasa_lookup.lookup_data
    end

    it 'should return links as a Hash' do
      expect(@nasa_lookup).to be_a(Hash)
  end

  it 'should return estimated_diameter_min as a Float' do
    expect(@nasa_lookup.get_estimated_diameter_min).to be_a(Float)
  end

  it 'should return is_potentially_hazardous_asteroid as a Boolean' do
    expect(@nasa_lookup.get_is_potentially_hazardous_asteroid)to be_a(Boolean)
  end

end
