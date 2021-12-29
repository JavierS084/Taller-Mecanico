class RemoveClientFromVehicle < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :vehicle_id, :integer
  end
end
