class AddNewColumnsToColour < ActiveRecord::Migration[5.2]
  def change
    add_column :colours, :description, :string
  end
end
