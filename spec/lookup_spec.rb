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

    it 'should return estimated_diameter_min as a Float' do
      expect(@nasa_lookup.get_estimated_diameter_min).to be_a(Float)
    end

    it 'should return is_potentially_hazardous_asteroid as true' do
      expect(@nasa_lookup.get_is_potentially_hazardous_asteroid).to eq true
    end

    it 'should return absolute_magnitude_h as a float AND the value: 21.8' do
      expect(@nasa_lookup.get_absolute_magnitude_h).to be_a(Float)
      expect(@nasa_lookup.get_absolute_magnitude_h).to eq 21.8
    end

    it 'should return estimated_diameter_max to eq 0.2594418179 and to be a Float' do
      expect(@nasa_lookup.get_estimated_diameter_max).to eq 0.2594418179
      expect(@nasa_lookup.get_estimated_diameter_max).to be_a(Float)
    end

    it 'should return get_estimated_diameter_min_meters as a Float and to eq 116.0259082094' do
      expect(@nasa_lookup.get_estimated_diameter_min_meters).to be_a(Float)
      expect(@nasa_lookup.get_estimated_diameter_min_meters).to eq 116.0259082094
    end

    it 'should return close_approach_data as an Array' do
      expect(@nasa_lookup.get_close_approach_data).to be_a(Array)
    end

    it 'should return close_approach_date as a String and equal to 1900-06-01' do
      expect(@nasa_lookup.get_close_approach_data.first.first.last).to eq '1900-06-01'
      expect(@nasa_lookup.get_close_approach_data.first.first.last).to be_a(String)
    end

    it 'should return epoch_date_close_approach as an integer and to equal to -2195913600000' do
      expect(@nasa_lookup.get_close_approach_data[0]['epoch_date_close_approach']).to be_a(Integer)
      expect(@nasa_lookup.get_close_approach_data[0]['epoch_date_close_approach']).to eq -2195913600000
    end

    it 'should return relative_velocity to return a String and to equal to 30.9416868629' do
      expect(@nasa_lookup.get_close_approach_data[0]['relative_velocity']['kilometers_per_second']).to be_a(String)
      expect(@nasa_lookup.get_close_approach_data[0]['relative_velocity']['kilometers_per_second']).to eq '30.9416868629'
    end

    it 'should return miss_distance : kilometers to return a String and equal to 6659916' do
      expect(@nasa_lookup.get_close_approach_data[0]['miss_distance']['kilometers']).to be_a(String)
      expect(@nasa_lookup.get_close_approach_data[0]['miss_distance']['kilometers']).to eq '6659916'
    end

    it 'should return close_approach_date to be a String and equal to 1900-07-07' do
      expect(@nasa_lookup.get_close_approach_data[1]['close_approach_date']).to be_a(String)
      expect(@nasa_lookup.get_close_approach_data[1]['close_approach_date']).to eq '1900-07-07'
    end

    it 'should return orbiting_body to equal Merc' do
      expect(@nasa_lookup.get_close_approach_data[0]['orbiting_body']).to eq 'Merc'
    end

    it 'should return orbiting_body from the 3rd element in the array to equal Earth' do
      expect(@nasa_lookup.get_close_approach_data[2]['orbiting_body']).to eq 'Earth'
    end







  end

end
