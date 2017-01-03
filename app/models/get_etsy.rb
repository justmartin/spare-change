require "json"

class GetEtsy < ApplicationRecord

  def self.get_active_listings(amount)
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa&fields=listing_id,state,category_id,title,description,price,currency_code,quantity,tags,category_path,materials,url,views,style,language&includes=Images&min_price=0&max_price=" + amount.to_s)
    
    response = Net::HTTP.get(uri)

    @parsed = JSON.parse(response)
  end
  
end