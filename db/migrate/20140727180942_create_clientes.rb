class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :apellido
      t.string :nombres
      t.string :documento
      t.integer :tdoc_id
      t.string :iibb
      t.integer :tiibb
      t.string :telefono
      t.string :email
      t.string :weblog
      t.string :contacto
      t.integer :ciiu_id
      t.integer :tcliente_id
      t.integer :direccion_id

      t.timestamps
    end
  end
end
