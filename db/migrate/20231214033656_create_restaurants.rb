class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|

      t.string :name, null: false
      t.string :pref, null: false
      t.string :city, null: false
      t.text :memo
      
      t.timestamps
    end
  end
end
