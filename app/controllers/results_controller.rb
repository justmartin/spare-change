class ResultsController < ApplicationController

  def index
    @listings = GetEtsy.get_price_listings
  end

end
