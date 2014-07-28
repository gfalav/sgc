class CreateLecturafacts < ActiveRecord::Migration
  def change
    create_table :lecturafacts do |t|
      t.integer :lectura_id
      t.integer :factura_id
      t.integer :medidor_id
      t.integer :tlectura_id
      t.date :flectura
      t.integer :tconsumo_id
      t.decimal :lectura
      t.decimal :ctelect
      t.decimal :consumo

      t.timestamps
    end
  end
end
