class SearchController < ApplicationController

  def index
    @listings = GetEtsy.get_active_listings
  end
  
end
