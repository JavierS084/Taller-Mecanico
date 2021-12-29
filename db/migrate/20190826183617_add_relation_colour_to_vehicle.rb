class AddRelationColourToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :colour
  end
end
