class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.text :observaciones
      t.string :tipo_mantenimiento
    end
  end
end
