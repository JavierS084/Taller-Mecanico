class AddDocumentToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :document, :integer
  end
end
