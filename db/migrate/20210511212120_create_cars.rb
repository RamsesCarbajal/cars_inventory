class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.decimal :price
      t.string :model
      t.boolean :new
      t.integer :year
      t.string :brand

      t.timestamps
    end
  end
end
