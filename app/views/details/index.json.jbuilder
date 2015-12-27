json.array!(@details) do |detail|
  json.extract! detail, :id, :libation_id, :date_drank, :store_purchased, :city_purchased, :prov_purchased, :country_purchased, :colour, :pulp, :can_art, :can_look, :sweet, :juice, :sip_giz, :flavour, :buy_again, :carbonated, :filename, :comments
  json.url detail_url(detail, format: :json)
end
