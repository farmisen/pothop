class AddFieldsToAccounts_006 < Sequel::Migration
  def up
    alter_table :accounts do
      add_column :business_name, String
      add_foreign_key :business_city_id, :cities
    end
  end

  def down
    alter_table :accounts do
      drop_column :business_name
      drop_column :business_city_id
    end
  end
end
