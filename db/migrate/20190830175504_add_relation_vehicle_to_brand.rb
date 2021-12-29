class AddRelationVehicleToBrand < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :brand
  end
end
