class AddRelationModelVehicleToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :model_vehicle
  end
end
