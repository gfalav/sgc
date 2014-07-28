json.array!(@paises) do |pais|
  json.extract! pais, :id, :pais
  json.url pais_url(pais, format: :json)
end
