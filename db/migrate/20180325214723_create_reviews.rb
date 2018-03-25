class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :booking, foreign_key: true
      t.string :comment
      t.float :ranking

      t.timestamps
    end
  end
end
