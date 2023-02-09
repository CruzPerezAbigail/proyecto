class AddShapeIdToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_reference :equipment, :shape, null: false, foreign_key: true
  end
end
