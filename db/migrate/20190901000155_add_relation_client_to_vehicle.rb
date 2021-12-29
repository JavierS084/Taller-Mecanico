class AddRelationClientToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :client
  end
end
