class CreateModelVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :model_vehicles do |t|
      t.string :description, nullable: false
      t.timestamps
    end
  end
end
