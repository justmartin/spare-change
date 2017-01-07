require "json"

class GetEtsy < ApplicationRecord

  def self.get_active_listings(amount)
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa&fields=listing_id,state,category_id,title,description,price,currency_code,quantity,tags,category_path,materials,url,views,style,language&includes=Images&limit=25&offset=0&min_price=0&max_price=" + amount.to_s)
    request_etsy_info(uri)
  end

  def self.get_active_listings_2(amount)
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa&fields=listing_id,state,category_id,title,description,price,currency_code,quantity,tags,category_path,materials,url,views,style,language&includes=Images&limit=25&offset=25&min_price=0&max_price=" + amount.to_s)
    request_etsy_info(uri)
  end

  def self.get_active_listings_3(amount)
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa&fields=listing_id,state,category_id,title,description,price,currency_code,quantity,tags,category_path,materials,url,views,style,language&includes=Images&limit=25&offset=50&min_price=0&max_price=" + amount.to_s)
    request_etsy_info(uri)
  end

  def self.get_active_listings_4(amount)
    uri = URI("https://openapi.etsy.com/v2/listings/active?api_key=hyd3pgxe41bbdxlbieh53xpa&fields=listing_id,state,category_id,title,description,price,currency_code,quantity,tags,category_path,materials,url,views,style,language&includes=Images&limit=25&offset=75&min_price=0&max_price=" + amount.to_s)
    request_etsy_info(uri)
  end

  private

  def self.request_etsy_info(uri)
    response = Net::HTTP.get(uri)

    @parsed = JSON.parse(response)
  end

end