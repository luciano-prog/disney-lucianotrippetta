class AddPeliculaToPersonaje < ActiveRecord::Migration[6.1]
  def change
  	add_reference :personajes, :pelicula, foreign_key: true, index: true, null:false
  end
end
