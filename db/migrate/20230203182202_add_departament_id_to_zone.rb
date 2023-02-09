class AddDepartamentIdToZone < ActiveRecord::Migration[7.0]
  def change
    add_reference :zones, :departament, null: false, foreign_key: true
  end
end
