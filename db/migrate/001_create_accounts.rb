class CreateAccounts_001 < Sequel::Migration
  def up
    create_table :accounts do
      primary_key :id
      String :first_name
      String :last_name
      String :email
      String :crypted_password
      String :salt
      String :role
    end
  end

  def down
    drop_table :accounts
  end
end
