# == Schema Information
#
# Table name: generos
#
#  id         :integer          not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genre < ApplicationRecord

	belongs_to :movie

end
