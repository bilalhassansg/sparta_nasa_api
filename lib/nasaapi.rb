require_relative 'services/browse'
require_relative 'services/nasa_feed'
require_relative 'services/lookup'

class Nasaio

  def browse_data
    BrowseNASA.new
  end

  def lookup_data
    LookupNASA.new
  end

  def feed_data
    FeedNASA.new
  end

end
