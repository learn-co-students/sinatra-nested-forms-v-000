class CreatePirates < ActiveRecord::Migration[5.1]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :height
      t.string :weight
    end
  end
end
