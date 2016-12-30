require "json"

class GetEtsy < ApplicationRecord

  def self.get_active_listings
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa")
    
    response = Net::HTTP.get(uri)

    @parsed = JSON.parse(response)
  end
  
end
