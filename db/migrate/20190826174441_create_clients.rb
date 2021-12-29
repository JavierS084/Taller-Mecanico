class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name, nullable: false
      t.string :last_name, nullable: false
      t.string :phone, nullable: false
        t.timestamps
    end
  end
end
