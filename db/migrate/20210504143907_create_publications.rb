class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.integer :precio
      t.string :titulo
      t.text :fotos
      t.string :especie
      t.string :tipo
      t.string :direccion

      t.timestamps
    end
  end
end
