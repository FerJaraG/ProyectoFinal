class ChangeDataTypeForLatitudeToCamping < ActiveRecord::Migration[5.1]
  def change
    change_column :campings, :latitude, 'float USING latitude::double precision'
  end
end
