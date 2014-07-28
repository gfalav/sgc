json.array!(@cuentas) do |cuenta|
  json.extract! cuenta, :id, :cliente_id, :nombre, :direccion_id, :tpago_id, :timpagado_id, :tvencimiento_id
  json.url cuenta_url(cuenta, format: :json)
end
