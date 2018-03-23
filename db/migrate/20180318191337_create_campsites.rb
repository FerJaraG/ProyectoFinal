class CreateCampsites < ActiveRecord::Migration[5.1]
  def change
    create_table :campsites do |t|
      t.string :identifier
      t.string :description
      t.references :camping, foreign_key: true

      t.timestamps
    end
  end
end
