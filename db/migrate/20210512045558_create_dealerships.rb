class CreateDealerships < ActiveRecord::Migration[6.1]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.integer :car_id
      t.string :address

      t.timestamps
    end
    add_column :cars, :dealership_id, :integer
  end
end
