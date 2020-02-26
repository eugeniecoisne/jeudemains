class RemoveLongitudeFromWorkshop < ActiveRecord::Migration[6.0]
  def change

    remove_column :workshops, :longitude, :float
  end
end
