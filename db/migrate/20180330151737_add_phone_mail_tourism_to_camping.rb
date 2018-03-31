class AddPhoneMailTourismToCamping < ActiveRecord::Migration[5.1]
  def change
    add_column :campings, :phone, :string
    add_column :campings, :email, :string
    add_column :campings, :tourism, :string
  end
end
