class CreateCuentas < ActiveRecord::Migration
  def change
    create_table :cuentas do |t|
      t.integer :cliente_id
      t.string :nombre
      t.integer :direccion_id
      t.integer :tpago_id
      t.integer :timpagado_id
      t.integer :tvencimiento_id

      t.timestamps
    end
  end
end
