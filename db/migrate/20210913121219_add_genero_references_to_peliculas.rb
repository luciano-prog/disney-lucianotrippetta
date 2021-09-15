class AddGeneroReferencesToPeliculas < ActiveRecord::Migration[6.1]
  def change
  	add_reference :peliculas, :genero, foreign_key: true, index: true, null: false
  end
end
