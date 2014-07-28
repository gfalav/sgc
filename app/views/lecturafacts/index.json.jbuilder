json.array!(@lecturafacts) do |lecturafact|
  json.extract! lecturafact, :id, :lectura_id, :factura_id, :medidor_id, :tlectura_id, :flectura, :tconsumo_id, :lectura, :ctelect, :consumo
  json.url lecturafact_url(lecturafact, format: :json)
end
