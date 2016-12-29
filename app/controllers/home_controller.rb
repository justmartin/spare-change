class HomeController < ApplicationController
  require 'json'

  def index
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa")
    
    response = Net::HTTP.get(uri)

    @parsed = JSON.parse(response)
  end
end
