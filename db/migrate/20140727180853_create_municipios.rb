class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.integer :departamento_id
      t.string :municipio

      t.timestamps
    end
  end
end
