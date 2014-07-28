class CreateProvincias < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.integer :pais_id
      t.string :provincia

      t.timestamps
    end
  end
end
