class AddFacebookToCamping < ActiveRecord::Migration[5.1]
  def change
    add_column :campings, :facebook, :string
  end
end
