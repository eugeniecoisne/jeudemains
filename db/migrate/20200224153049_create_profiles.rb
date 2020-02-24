class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :company
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :phone_number
      t.string :site_web
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
