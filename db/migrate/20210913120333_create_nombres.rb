class CreateNombres < ActiveRecord::Migration[6.1]
  def change
    create_table :nombres do |t|

      t.timestamps
    end
  end
end
