class AddZoneIdToMaintenances < ActiveRecord::Migration[7.0]
  def change
    add_reference :maintenances, :zone, null: false, foreign_key: true
  end
end
