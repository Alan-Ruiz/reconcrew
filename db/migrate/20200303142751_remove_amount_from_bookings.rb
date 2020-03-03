class RemoveAmountFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :amount, :integer
  end
end
