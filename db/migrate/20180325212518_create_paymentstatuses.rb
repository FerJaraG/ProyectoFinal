class CreatePaymentstatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :paymentstatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
