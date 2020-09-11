class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|

      t.string :name
      t.integer :amount
      t.string :date
      t.integer :plant_id
      

      t.timestamps
    end
  end
end
