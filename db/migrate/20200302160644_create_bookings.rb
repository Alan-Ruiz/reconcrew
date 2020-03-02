class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :amount
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
