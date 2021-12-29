class AddRelationBrandToModelVehicle < ActiveRecord::Migration[5.2]
  def change
    add_reference :model_vehicles, :brand
  end
end
