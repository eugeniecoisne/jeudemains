class ChangePriceToWorkshop < ActiveRecord::Migration[6.0]
  def change
    remove_column :workshops, :price, :float
    add_monetize :workshops, :price, currency: { present: false }
  end
end
