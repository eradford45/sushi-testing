class CreateSushiRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :sushi_rolls do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
