class CreateReportes < ActiveRecord::Migration[7.0]
  def change
    create_table :reportes , :primary_key => :id_reporte do |t|
      t.date :fecha
      t.text :observaciones
      t.string :tipo_problema
      t.integer :id_mantenimiento

      t.timestamps
    end
    
    add_foreign_key "reportes", "mantenimientos", column: "id_mantenimiento", primary_key: "id_mantenimiento"
  
  end
end
