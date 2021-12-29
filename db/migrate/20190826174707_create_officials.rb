class CreateOfficials < ActiveRecord::Migration[5.2]
  def change
    create_table :officials do |t|
      t.string :first_name, nullable: false
      t.string :last_name, nullable: false
      t.string :phone, nullable: false
      t.integer :document_number, nullable: false
      t.timestamps
    end
  end
end
