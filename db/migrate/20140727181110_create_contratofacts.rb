class CreateContratofacts < ActiveRecord::Migration
  def change
    create_table :contratofacts do |t|
      t.integer :contrato_id
      t.integer :factura_id
      t.integer :cuenta_id
      t.string :nombre
      t.integer :tcuit_id
      t.string :iibb
      t.integer :tiibb_id
      t.integer :tperfact_id
      t.integer :econtrato_id

      t.timestamps
    end
  end
end
