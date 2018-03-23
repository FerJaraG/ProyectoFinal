class AddImagesToCamping < ActiveRecord::Migration[5.1]
  def change
    add_column :campings, :images, :json
  end
end
