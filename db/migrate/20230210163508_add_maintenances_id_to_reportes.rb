class AddMaintenancesIdToReportes < ActiveRecord::Migration[7.0]
  def change
    add_reference :reportes, :maintenances, null: false, foreign_key: true
  end
end
