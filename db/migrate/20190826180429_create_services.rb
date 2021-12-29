class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :description, nullable: false
      t.integer :price, nullable: false
      t.timestamps
    end
  end
end
