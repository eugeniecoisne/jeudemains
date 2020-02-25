class AddParticipantToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :participant, :boolean
  end
end
