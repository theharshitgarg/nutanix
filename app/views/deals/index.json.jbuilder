json.array!(@deals) do |deal|
  json.extract! deal, :id, :name, :actual_price, :discount, :rating, :provider, :link, :image
  json.url deal_url(deal, format: :json)
end
