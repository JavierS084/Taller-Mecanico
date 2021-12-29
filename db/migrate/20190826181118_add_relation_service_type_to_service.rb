class AddRelationServiceTypeToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :service_type
  end
end
