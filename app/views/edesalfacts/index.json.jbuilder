json.array!(@edesalfacts) do |edesalfact|
  json.extract! edesalfact, :id, :edesal_id, :factura_id, :contratofact_id, :tarifa_id, :potvigente, :fpotvigente, :potoriginal, :fpotoriginal, :fdetectbadcosfi, :csmofijo, :eservicio
  json.url edesalfact_url(edesalfact, format: :json)
end
