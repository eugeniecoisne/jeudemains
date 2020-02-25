class ChangesColumnsDefaultValuesInProfiles < ActiveRecord::Migration[6.0]
  def change
    change_column_default :profiles, :organizer, false
    change_column_default :profiles, :animator, false
    change_column_default :profiles, :participant, true
    change_column :workshops, :description, :text
  end
end
