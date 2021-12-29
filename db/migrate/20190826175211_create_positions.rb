class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :description, nullable: false
      t.timestamps
    end
  end
end
