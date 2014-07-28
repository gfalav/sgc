json.array!(@provincias) do |provincia|
  json.extract! provincia, :id, :pais_id, :provincia
  json.url provincia_url(provincia, format: :json)
end
