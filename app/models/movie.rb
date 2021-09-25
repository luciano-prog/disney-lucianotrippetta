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
class Movie < ApplicationRecord

	has_many :characters
	
	has_many :genders

	scopes -- named scopes

	scope :todos_los_que_no_fueron_borrados_logicamente, -> {
		where(delete_at: nil)
	}

	validates :title, presence: true 

	def soft_destroy
		update(deleted_at: Time.now)
	end
end
