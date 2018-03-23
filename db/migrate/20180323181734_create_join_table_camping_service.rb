class CreateJoinTableCampingService < ActiveRecord::Migration[5.1]
  def change
    create_join_table :campings, :services do |t|
      # t.index [:camping_id, :service_id]
      # t.index [:service_id, :camping_id]
    end
  end
end
