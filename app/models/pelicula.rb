# == Schema Information
#
# Table name: peliculas
#
#  id           :integer          not null, primary key
#  calificacion :integer
#  personaje    :string
#  titulo       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Pelicula < ApplicationRecord
	has_many :personajes
	has_many :generos

	scopes -- named scopes

	scope :todos_los_que_no_fueron_borrados_logicamente, -> {
		where(delete_at: nil)
	}

	validates :titulo, 

	def soft_destroy
		update(deleted_at: Time.now)
	end
end
