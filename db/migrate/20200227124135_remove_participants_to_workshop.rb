class RemoveParticipantsToWorkshop < ActiveRecord::Migration[6.0]
  def change
    remove_column :workshops, :participants, :integer
  end
end
