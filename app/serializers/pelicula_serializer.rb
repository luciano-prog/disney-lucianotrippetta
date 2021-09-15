class PeliculaSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :calificacion

  belongs_to :generos
end
