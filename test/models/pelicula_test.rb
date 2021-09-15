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
require "test_helper"

class PeliculaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
