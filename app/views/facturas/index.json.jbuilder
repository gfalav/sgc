json.array!(@facturas) do |factura|
  json.extract! factura, :id, :contrato_id, :periodo, :fdesde, :fhasta, :femision, :fvcto, :fproxvcto, :fupb, :nro
  json.url factura_url(factura, format: :json)
end
