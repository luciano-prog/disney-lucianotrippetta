class CreatePersonajes < ActiveRecord::Migration[6.1]

  def change

    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.text :history
      t.string :movies
      
      t.timestamps
      
    end
  end
end
