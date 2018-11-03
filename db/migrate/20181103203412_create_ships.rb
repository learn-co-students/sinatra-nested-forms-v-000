class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :category
      t.string :booty
      t.integer :pirate_id
      t.timestamps
    end
  end
end
