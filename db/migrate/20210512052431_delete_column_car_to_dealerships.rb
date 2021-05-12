class DeleteColumnCarToDealerships < ActiveRecord::Migration[6.1]
  def change
    remove_column :dealerships, :car_id
  end
end
