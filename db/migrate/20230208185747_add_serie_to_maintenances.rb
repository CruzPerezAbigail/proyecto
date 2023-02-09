class AddSerieToMaintenances < ActiveRecord::Migration[7.0]
  def change
    add_reference :maintenances, :equipment, null: false, foreign_key: true, type: :string
  end
end
