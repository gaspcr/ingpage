class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :publicacion_id
      t.text :descripcion

      t.timestamps
    end
  end
end
