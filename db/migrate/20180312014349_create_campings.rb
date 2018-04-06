class CreateCampings < ActiveRecord::Migration[5.1]
  def change
    create_table :campings do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true
      t.integer :camping_type
      t.references :commune, foreign_key: true
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :info

      t.timestamps
    end
  end
end
