class AddRelationPositionToOfficial < ActiveRecord::Migration[5.2]
  def change
    add_reference :officials, :position
  end
end
