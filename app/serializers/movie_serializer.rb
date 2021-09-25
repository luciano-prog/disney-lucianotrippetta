class PeliculaSerializer < ActiveModel::Serializer
	
  attributes :id, :title, :calificacion

  belongs_to :genders
end
