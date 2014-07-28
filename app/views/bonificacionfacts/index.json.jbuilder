json.array!(@bonificacionfacts) do |bonificacionfact|
  json.extract! bonificacionfact, :id, :bonificacion_id, :factura_id, :edesal_id, :linea, :porcentaje, :fdesde, :fhasta
  json.url bonificacionfact_url(bonificacionfact, format: :json)
end
