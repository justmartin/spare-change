class ResultsController < ApplicationController

  def index
    @listings = GetEtsy.get_active_listings(params[:amount].to_f)
  end

end
