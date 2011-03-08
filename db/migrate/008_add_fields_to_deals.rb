class AddFieldsToDeals_008 < Sequel::Migration
  def up
    alter_table :deals do
      add_foreign_key :partner_account_id, :accounts
    end
  end

  def down
    alter_table :deals do
      drop_column :partner_account_id
    end
  end
end
