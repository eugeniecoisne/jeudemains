class AddParticipantsToWorkshopDate < ActiveRecord::Migration[6.0]
  def change
    add_column :workshop_dates, :participants, :integer
  end
end
