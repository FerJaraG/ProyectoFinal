class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :booking, foreign_key: true
      t.float :amount
      t.references :paymentmethod, foreign_key: true
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
