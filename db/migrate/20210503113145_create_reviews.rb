class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :evaluacion
      t.text :comentario

      t.timestamps
    end
  end
end
