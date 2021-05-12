class AddIsDeletedtoCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :is_deleted, :boolean, default: false
  end
end
