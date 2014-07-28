class CreateBonificacionfacts < ActiveRecord::Migration
  def change
    create_table :bonificacionfacts do |t|
      t.integer :bonificacion_id
      t.integer :factura_id
      t.integer :edesal_id
      t.integer :linea
      t.decimal :porcentaje
      t.date :fdesde
      t.date :fhasta

      t.timestamps
    end
  end
end
