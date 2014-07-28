json.array!(@bonificacions) do |bonificacion|
  json.extract! bonificacion, :id, :edesal_id, :linea, :porcentaje, :fdesde, :fhasta
  json.url bonificacion_url(bonificacion, format: :json)
end
