class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :description
      t.string :thematic
      t.string :subtheme
      t.string :level
      t.float :price
      t.integer :duration
      t.integer :participants
      t.references :place, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
