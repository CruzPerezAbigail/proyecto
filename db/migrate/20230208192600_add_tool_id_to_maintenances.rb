class AddToolIdToMaintenances < ActiveRecord::Migration[7.0]
  def change
    add_reference :maintenances, :tool, null: false, foreign_key: true
  end
end
