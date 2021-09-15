class AddDeletedAtToCiudades < ActiveRecord::Migration[6.1]
  def change
    add_column :ciudades, :deleted_at, :datetime
  end
end
