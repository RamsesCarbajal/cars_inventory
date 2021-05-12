class AddProductionDateToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :production_date, :date
  end
end
