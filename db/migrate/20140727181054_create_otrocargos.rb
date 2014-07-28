class CreateOtrocargos < ActiveRecord::Migration
  def change
    create_table :otrocargos do |t|
      t.integer :edesal_id
      t.integer :concepto_id
      t.decimal :importe
      t.date :ffactura
      t.integer :ecargo_id

      t.timestamps
    end
  end
end
