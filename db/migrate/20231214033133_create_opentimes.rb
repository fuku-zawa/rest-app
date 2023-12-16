class CreateOpentimes < ActiveRecord::Migration[6.0]
  def change
    create_table :opentimes do |t|

      t.time :open
      t.time :close
      t.timestamps
    end
  end
end
