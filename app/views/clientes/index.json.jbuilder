json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :apellido, :nombres, :documento, :tdoc_id, :iibb, :tiibb, :telefono, :email, :weblog, :contacto, :ciiu_id, :tcliente_id, :direccion_id
  json.url cliente_url(cliente, format: :json)
end
