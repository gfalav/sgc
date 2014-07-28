class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.integer :provincia_id
      t.string :departamento

      t.timestamps
    end
  end
end
