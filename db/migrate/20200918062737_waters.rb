class Waters < ActiveRecord::Migration[6.0]
  def change
    add_column :waters, :plant_id, :integer
  end
end
