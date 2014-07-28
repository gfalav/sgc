json.array!(@lecturas) do |lectura|
  json.extract! lectura, :id, :medidor_id, :tlectura_id, :flectura, :tconsumo_id, :lectura, :ctelect, :consumo, :electura_id
  json.url lectura_url(lectura, format: :json)
end
