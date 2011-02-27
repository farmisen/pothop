class ModifyDeals < Sequel::Migration
  def change
    rename_column :deals, :quantity, :total
  end
end
