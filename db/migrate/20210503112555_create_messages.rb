class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :from_id
      t.integer :to_id
      t.text :contenido

      t.timestamps
    end
  end
end
