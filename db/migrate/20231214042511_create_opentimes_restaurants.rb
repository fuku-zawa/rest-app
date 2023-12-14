class CreateOpentimesRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :opentimes_restaurants do |t|
       # 外部キー制約はいらないと思う
      t.references :restaurant, null: false
      t.references :opentime, null: false
      t.timestamps
    end
  end
end
