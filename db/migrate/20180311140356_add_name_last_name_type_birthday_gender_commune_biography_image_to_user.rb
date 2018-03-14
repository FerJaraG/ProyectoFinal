class AddNameLastNameTypeBirthdayGenderCommuneBiographyImageToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :lastName, :string
    add_column :users, :user_type, :integer
    add_column :users, :birthday, :date
    add_reference :users, :genre, foreign_key: true
    add_reference :users, :commune, foreign_key: true
    add_column :users, :biography, :string
    add_column :users, :image, :string
  end
end
