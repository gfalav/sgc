json.array!(@suministros) do |suministro|
  json.extract! suministro, :id, :nombre, :edesal_id, :tmedicion_id, :tconexion_id, :ttension_id, :tfase_id, :direccion_id
  json.url suministro_url(suministro, format: :json)
end
