require "json"

class GetEtsy < ApplicationRecord

  def self.get_active_listings
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa&fields=listing_id,state,category_id,title,description,price,currency_code,quantity,tags,category_path,materials,url,views,style,language&includes=Images")
    
    response = Net::HTTP.get(uri)

    @parsed = JSON.parse(response)
  end

  def self.get_price_listings
    uri = URI("https://openapi.etsy.com/v2/listings/active?&api_key=hyd3pgxe41bbdxlbieh53xpa&min_price=0&max_price=10")
    
    response = Net::HTTP.get(uri)

    @parsed = JSON.parse(response)
  end
  
end