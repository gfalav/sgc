json.array!(@otrocargofacts) do |otrocargofact|
  json.extract! otrocargofact, :id, :otrocargo_id, :factura_id, :edesal_id, :concepto_id, :importe, :ffactura, :ecargo_id
  json.url otrocargofact_url(otrocargofact, format: :json)
end
