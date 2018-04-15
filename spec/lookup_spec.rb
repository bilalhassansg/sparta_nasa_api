require 'spec_helper'

describe 'NASALookup' do
  context 'Requesting information on the Nasa Lookup page' do

    before(:all) do
      @nasa_lookup = Nasaio.new.lookup_data
      @nasa_lookup.get_lookup('3542519')
    end

    it 'should check links : self returns a string' do
      expect(@nasa_lookup.get_link).to be_a(String)
    end

    it 'should get a neo_id of 3542519' do
      expect(@nasa_lookup.get_neo_id).to eq '3542519'
    end

    # it 'should return estimated_diameter_min as a Float' do
    #   expect(@nasa_lookup.get_estimated_diameter_min).to be_a(Float)
    # end
    #
    # it 'should return is_potentially_hazardous_asteroid as a Boolean' do
    #   expect(@nasa_lookup.get_is_potentially_hazardous_asteroid).to be_a(Boolean)
    # end
    #
    # it 'should return orbiting_body to equal Venus' do
    #   expect(@nasa_lookup.get_orbiting_body).to eq 'Venus'
    # end
    #
    # it 'should return kilometers as an integer and to equal 32568680' do
    #   exoect(@nasa_lookup.get_miss_distance).to be_a(Integer)
    #   exoect(@nasa_lookup.get_miss_distance).to eq 32568680
    # end

  end

end
