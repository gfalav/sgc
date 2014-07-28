class CreatePaises < ActiveRecord::Migration
  def change
    create_table :paises do |t|
      t.string :pais

      t.timestamps
    end
  end
end
