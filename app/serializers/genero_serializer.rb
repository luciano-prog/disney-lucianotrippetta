class GeneroSerializer < ActiveModel::Serializer
  attributes :id, :nombre

  has_many :personajes
end
