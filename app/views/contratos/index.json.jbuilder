json.array!(@contratos) do |contrato|
  json.extract! contrato, :id, :cuenta_id, :nombre, :tcuit_id, :tiibb_id, :tperfact_id, :econtrato_id, :fcontratoact
  json.url contrato_url(contrato, format: :json)
end
