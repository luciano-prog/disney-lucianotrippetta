class AddGeneroReferencesToMovies < ActiveRecord::Migration[6.1]

  def change

  	add_reference :movies, :gender, foreign_key: true, index: true, null: false

  end
end
