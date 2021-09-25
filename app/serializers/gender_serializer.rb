class GenderSerializer < ActiveModel::Serializer

  attributes :id, :name

  has_many :characters

end
