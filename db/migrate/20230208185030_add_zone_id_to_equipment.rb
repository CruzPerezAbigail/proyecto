class AddZoneIdToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_reference :equipment, :zone, null: false, foreign_key: true
  end
end
