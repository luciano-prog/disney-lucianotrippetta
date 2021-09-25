# == Schema Information
#
# Table name: personajes
#
#  id          :integer          not null, primary key
#  edad        :integer
#  historia    :text
#  nombre      :string
#  peliculas   :string
#  peso        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  pelicula_id :integer          not null
#
# Indexes
#
#  index_personajes_on_pelicula_id  (pelicula_id)
#
# Foreign Keys
#
#  pelicula_id  (pelicula_id => peliculas.id)
#
class Character < ApplicationRecord

	belongs_to :movie
	
end
