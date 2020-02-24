class CreateWorkshopDates < ActiveRecord::Migration[6.0]
  def change
    create_table :workshop_dates do |t|
      t.date :date
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
