class AddAnimatorToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :animator, :boolean
  end
end
