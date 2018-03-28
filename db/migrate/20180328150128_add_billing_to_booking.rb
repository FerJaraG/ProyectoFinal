class AddBillingToBooking < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :billing, foreign_key: true
  end
end
