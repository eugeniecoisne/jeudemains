class AddStartAtToWorkshopDate < ActiveRecord::Migration[6.0]
  def change
    add_column :workshop_dates, :start_at, :string
  end
end
