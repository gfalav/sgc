json.array!(@edesals) do |edesal|
  json.extract! edesal, :id, :contrato_id, :tarifa_id, :potvigente, :fpotvigente, :potoriginal, :fpotoriginal, :fdetectbadcosfi, :csmofijo, :eservicio
  json.url edesal_url(edesal, format: :json)
end
