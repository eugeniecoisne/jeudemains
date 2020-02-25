class AddOrganizerToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :organizer, :boolean
  end
end
