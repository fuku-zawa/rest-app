class CreateMenusRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :menus_restaurants do |t|
       # 外部キー制約はいらないと思う
      t.references :restaurant, null: false
      t.references :menu, null: false
      t.timestamps
    end
  end
end
