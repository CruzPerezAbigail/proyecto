class AddResourcesIdToMaintenances < ActiveRecord::Migration[7.0]
  def change
    add_reference :maintenances, :resources, null: false, foreign_key: true
  end
end
