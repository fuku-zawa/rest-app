class CreateClosedaysRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :closedays_restaurants do |t|
       # 外部キー制約はいらないと思う
      t.references :restaurant, null: false
      t.references :closeday, null: false
      t.timestamps
    end
  end
end
