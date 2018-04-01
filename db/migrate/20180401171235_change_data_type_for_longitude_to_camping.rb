class ChangeDataTypeForLongitudeToCamping < ActiveRecord::Migration[5.1]
  def change
    change_column :campings, :longitude, 'float USING longitude::double precision'
  end
end
