class RemoveFieldsFromAccounts_007 < Sequel::Migration

  def up
    alter_table :accounts do
      drop_column :business_city_id
    end
  end

  def down
    alter_table :accounts do
      add_foreign_key :business_city_id, :cities
    end
  end

end
