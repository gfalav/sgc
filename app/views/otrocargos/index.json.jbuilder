json.array!(@otrocargos) do |otrocargo|
  json.extract! otrocargo, :id, :edesal_id, :concepto_id, :importe, :ffactura, :ecargo_id
  json.url otrocargo_url(otrocargo, format: :json)
end
