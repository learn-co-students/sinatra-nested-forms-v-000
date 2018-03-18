class CreateShips < ActiveRecord::Migration[5.1]
  def change
    drop_table :ships
    create_table :ships do |t|
      t.string :name
      t.string :type
      t.string :booty
      t.integer :pirate_id
    end
  end
end
