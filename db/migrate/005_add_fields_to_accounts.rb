class AddFieldsToAccounts_005 < Sequel::Migration
  def up
    alter_table :accounts do
      add_foreign_key :city_id, :cities
    end
  end

  def down
    alter_table :accounts do
      drop_column :city_id
    end
  end
end
