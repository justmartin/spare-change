class ResultsController < ApplicationController

  def index
    @listings = GetEtsy.loop_listings(params[:amount])
  end

end
