class AddAmountToBooking < ActiveRecord::Migration[6.0]
  def change
    change_table :bookings do |t|
      t.monetize :amount
    end
  end
end
