class AddStatusToCampsite < ActiveRecord::Migration[5.1]
  def change
    add_column :campsites, :status, :boolean, default: false
  end
end
