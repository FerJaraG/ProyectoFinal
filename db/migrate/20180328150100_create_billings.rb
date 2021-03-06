class CreateBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :billings do |t|
      t.string :code
      t.string :payment_method
      t.decimal :amount, precision: 10, scale: 2
      t.references :currency, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
