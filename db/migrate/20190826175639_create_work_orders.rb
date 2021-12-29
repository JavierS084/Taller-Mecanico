class CreateWorkOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :work_orders do |t|

      t.string :vehicle, nullable: false
      t.string :official, nullable: false
      t.timestamps
    end
  end
end
