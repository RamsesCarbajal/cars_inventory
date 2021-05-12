class AddNewModelColumnToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :new_model, :boolean
    remove_column :cars, :new
    Car.update_all(new_model: true)
  end
end
