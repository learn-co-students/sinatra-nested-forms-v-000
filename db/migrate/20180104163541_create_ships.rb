class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :typos
      t.string :booty
      t.integer :pirate_id
      t.integer :privateer_id
    end
  end
end
