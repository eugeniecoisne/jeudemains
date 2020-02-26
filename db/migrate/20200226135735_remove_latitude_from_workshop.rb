class RemoveLatitudeFromWorkshop < ActiveRecord::Migration[6.0]
  def change

    remove_column :workshops, :latitude, :float
  end
end
