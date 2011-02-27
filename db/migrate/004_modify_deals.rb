class ModifyDeals < Sequel::Migration
  def change
    rename_column :deal, :quantity, :total
  end
end
