json.array!(@medidors) do |medidor|
  json.extract! medidor, :id, :suministro_id, :tmedidor_id, :nromedidor, :marca_id, :modelo, :corriente, :ttension_id, :tfase_id, :cteapa, :ffabric, :cperds
  json.url medidor_url(medidor, format: :json)
end
