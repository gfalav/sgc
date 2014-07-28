class CreateBonificacions < ActiveRecord::Migration
  def change
    create_table :bonificacions do |t|
      t.integer :edesal_id
      t.integer :linea
      t.decimal :porcentaje
      t.date :fdesde
      t.date :fhasta

      t.timestamps
    end
  end
end
