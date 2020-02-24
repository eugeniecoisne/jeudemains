class AddStatusToWorkshops < ActiveRecord::Migration[6.0]
  def change
    add_column :workshops, :status, :string
  end
end
