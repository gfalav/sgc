json.array!(@contratofacts) do |contratofact|
  json.extract! contratofact, :id, :contrato_id, :factura_id, :cuenta_id, :nombre, :tcuit_id, :iibb, :tiibb_id, :tperfact_id, :econtrato_id
  json.url contratofact_url(contratofact, format: :json)
end
