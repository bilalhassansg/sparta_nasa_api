require 'spec_helper'

describe 'NASABrowse' do
  context 'Requesting information on the Nasa Browse page' do

    before(:all) do
      @nasa_browse = Nasaio.new.browse_data
      @nasa_browse.get_browse_from_page('2021277')
    end

    it 'should return the neo_id to equal 2021277' do
      expect(@nasa_browse.get_neo_id).to eq '2021277'
    end

    it 'should return absolute_magnitude_h as a Float' do
      expect(@nasa_browse.get_absolute_magnitude_h).to be_a(Float)
    end

    it 'should return estimated_diameter:kilometers:estimated_diameter_min and to equal 1.6770846216' do
      expect(@nasa_browse.get_estimated_diameter_min).to be_a(Float)
      expect(@nasa_browse.get_estimated_diameter_min).to eq 1.6770846216
    end

    it 'should return is_potentially_hazardous_asteroid as a true/false and return false' do
      expect(@nasa_browse.get_is_potentially_hazardous_asteroid).to eq false
      expect(@nasa_browse.get_is_potentially_hazardous_asteroid).to be(true).or be(false)
    end

    it 'should return close_approach_data as an array' do
      expect(@nasa_browse.get_close_approach_data).to be_a(Array)
    end

    it 'should return close_approach_date' do
      expect(@nasa_browse.get_close_approach_data.first.first.first).to be_a(String)
    end

    it 'should return close_approach_data:relative_velocity:kilometers_per_second' do
      expect(@nasa_browse.get_close_approach_data.first['relative_velocity']['kilometers_per_second']).to be_a(String)
    end

  end

end
