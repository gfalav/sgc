class CreateEdesalfacts < ActiveRecord::Migration
  def change
    create_table :edesalfacts do |t|
      t.integer :edesal_id
      t.integer :factura_id
      t.integer :contratofact_id
      t.string :tarifa_id
      t.integer :potvigente
      t.date :fpotvigente
      t.integer :potoriginal
      t.date :fpotoriginal
      t.date :fdetectbadcosfi
      t.integer :csmofijo
      t.integer :eservicio

      t.timestamps
    end
  end
end
