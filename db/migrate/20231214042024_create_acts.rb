class CreateActs < ActiveRecord::Migration[6.0]
  def change
    create_table :acts do |t|
       # 外部キー制約はいらないと思う
      t.references :user, null: false
      t.references :restaurant, null: false
      t.timestamps
    end
  end
end
