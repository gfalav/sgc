json.array!(@lineas) do |linea|
  json.extract! linea, :id, :factura_id, :concepto_id, :importe, :leyenda
  json.url linea_url(linea, format: :json)
end
