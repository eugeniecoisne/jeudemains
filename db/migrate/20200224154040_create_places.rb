class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :phone_number
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
