class CreateMedidors < ActiveRecord::Migration
  def change
    create_table :medidors do |t|
      t.integer :suministro_id
      t.integer :tmedidor_id
      t.string :nromedidor
      t.integer :marca_id
      t.string :modelo
      t.string :corriente
      t.integer :ttension_id
      t.integer :tfase_id
      t.decimal :cteapa
      t.date :ffabric
      t.decimal :cperds

      t.timestamps
    end
  end
end
