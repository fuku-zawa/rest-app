class CreateClosedays < ActiveRecord::Migration[6.0]
  def change
    create_table :closedays do |t|

      t.date :day
      
      t.timestamps
    end
  end
end
