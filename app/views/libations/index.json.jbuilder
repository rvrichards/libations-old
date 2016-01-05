json.array!(@libations) do |libation|
  json.extract! libation, :id, :libation_name, :measurement, :container_type, :measurement_type, :country_made, :company_name, :libation_type, :website
  json.url libation_url(libation, format: :json)
end
