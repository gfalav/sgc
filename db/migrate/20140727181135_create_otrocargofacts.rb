class CreateOtrocargofacts < ActiveRecord::Migration
  def change
    create_table :otrocargofacts do |t|
      t.integer :otrocargo_id
      t.integer :factura_id
      t.integer :edesal_id
      t.integer :concepto_id
      t.decimal :importe
      t.date :ffactura
      t.integer :ecargo_id

      t.timestamps
    end
  end
end
