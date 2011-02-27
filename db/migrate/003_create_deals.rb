class CreateDeals < Sequel::Migration
  def up
    create_table :deals do
      primary_key :id
      String :title
      Integer :price
      Integer :value
      String :description, :text=>true
      String :fine_print, :text=>true
      Integer :bought
      Integer :total
      foreign_key :city_id, :cities
    end
  end

  def down
    drop_table :deals
  end
end
