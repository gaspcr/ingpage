class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :publicacion_id
      t.text :contenido

      t.timestamps
    end
  end
end
