class AddDeletedAtToCiudades < ActiveRecord::Migration[6.1]

  def change

    add_column :cities, :deleted_at, :datetime

  end
end
