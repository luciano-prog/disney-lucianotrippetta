class AddPeliculaToPersonaje < ActiveRecord::Migration[6.1]

  def change

  	add_reference :characters, :movie, foreign_key: true, index: true, null:false

  end
  
end
