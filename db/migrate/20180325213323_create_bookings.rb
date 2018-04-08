class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.float :price_per_day
      t.float :total_price
      t.date :booking_date
      t.integer :adults_quantity, default: 0
      t.integer :kids_quantity, default: 0
      t.string :observations
      t.integer :status, default: 0
      t.references :camping, foreign_key: true
      t.references :user, foreign_key: true
      t.references :campsite, foreign_key: true

      t.timestamps
    end
  end
end
