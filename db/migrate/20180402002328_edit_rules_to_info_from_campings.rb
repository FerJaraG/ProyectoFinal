class EditRulesToInfoFromCampings < ActiveRecord::Migration[5.1]
  def change
    rename_column :campings, :rules, :info
  end
end
