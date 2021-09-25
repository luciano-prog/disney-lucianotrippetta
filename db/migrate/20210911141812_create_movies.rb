class CreatePeliculas < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :calification
      t.string :character

      t.timestamps
    end
  end
end
