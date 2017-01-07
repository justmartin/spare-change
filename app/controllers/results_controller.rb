class ResultsController < ApplicationController

  def index
    @listings = GetEtsy.get_active_listings(params[:amount].to_f)
  end

  def results_2
    @listings = GetEtsy.get_active_listings_2(params[:amount].to_f)
  end

  def results_3
    @listings = GetEtsy.get_active_listings_3(params[:amount].to_f)
  end

  def results_4
    @listings = GetEtsy.get_active_listings_4(params[:amount].to_f)
  end

end
