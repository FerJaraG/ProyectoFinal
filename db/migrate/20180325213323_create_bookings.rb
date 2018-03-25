class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.float :price_per_day
      t.float :total_price
      t.date :booking_date
      t.integer :adults_quantity
      t.integer :kids_quantity
      t.string :observations
      t.references :camping, foreign_key: true
      t.references :user, foreign_key: true
      t.references :campsite, foreign_key: true
      t.references :paymentstatus, foreign_key: true

      t.timestamps
    end
  end
end
