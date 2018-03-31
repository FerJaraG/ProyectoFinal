class AddWebToCamping < ActiveRecord::Migration[5.1]
  def change
    add_column :campings, :web, :string
  end
end
