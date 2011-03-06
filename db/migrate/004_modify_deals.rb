class ModifyDeals_004 < Sequel::Migration
  def change
    rename_column :deals, :quantity, :total
  end
end
