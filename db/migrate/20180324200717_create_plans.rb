class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.references :season, foreign_key: true
      t.integer :person_type
      t.references :camping, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
