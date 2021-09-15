class CreatePeliculas < ActiveRecord::Migration[6.1]
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.integer :calificacion
      t.string :personaje

      t.timestamps
    end
  end
end
