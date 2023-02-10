class AddZoneIdToSolicitud < ActiveRecord::Migration[7.0]
  def change
    add_reference :solicituds, :zone, null: false, foreign_key: true
  end
end
