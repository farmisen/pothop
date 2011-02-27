class CreateCities < Sequel::Migration
  def up
    create_table :cities do
      primary_key :id
      String :name
    end
  end

  def down
    drop_table :cities
  end
end
