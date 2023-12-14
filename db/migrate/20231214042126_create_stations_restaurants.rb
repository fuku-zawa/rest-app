class CreateStationsRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :stations_restaurants do |t|
       # 外部キー制約はいらないと思う
      t.references :restaurant, null: false
      t.references :station, null: false
      t.timestamps
    end
  end
end
