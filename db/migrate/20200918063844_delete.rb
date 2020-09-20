class Delete < ActiveRecord::Migration[6.0]
  def change
    remove_column :waters, :plant_id, :integer
  end
end
