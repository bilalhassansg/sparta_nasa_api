require 'spec_helper'

describe 'NASAFeed' do
  context 'Requesting information on the Nasa Feed page' do

    before(:all) do
      @nasa_feed = Nasaio.new.feed_data
      @nasa_feed.get_feed('3726710')
    end

    it 'should return the neo_id to equal 3726710' do
      expect(@nasa_feed.get_neo_id).to eq '3726710'
    end

    it 'should get estimated_diameter:kilometers:estimated_diameter_max to be a Float and to equal 0.0820427065' do
      expect(@nasa_feed.get_estimated_diameter_max).to be_a(Float)
      expect(@nasa_feed.get_estimated_diameter_max).to eq 0.0820427065
    end

    it 'should get estimated_diameter:meters:estimated_diameter_min to be a Float and to equal 36.6906137531' do
      expect(@nasa_feed.get_estimated_diameter_min_meter).to be_a(Float)
      expect(@nasa_feed.get_estimated_diameter_min_meter).to eq 36.6906137531
    end

  end

end
