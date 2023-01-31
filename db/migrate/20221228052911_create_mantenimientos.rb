class CreateMantenimientos < ActiveRecord::Migration[7.0]
  def change
    create_table :mantenimientos, :primary_key => :id_mantenimiento do |t|
        t.datetime :fecha_inicio
        t.datetime :fecha_fin
        t.text :observaciones
        t.string :tipo_mantenimiento
        t.string :serie
        t.integer :id_departamento
        t.string :rfc
        t.integer :id_materiales 
        t.integer :id_herramienta
        t.integer :id_insumo
  
      t.timestamps
    end
    add_foreign_key "mantenimientos", "equipo12s", column: "serie", primary_key: "serie"
    add_foreign_key "mantenimientos", "departamentos", column: "id_departamento", primary_key: "id_departamento"
    add_foreign_key "mantenimientos", "usuarios", column: "rfc", primary_key: "rfc"
    add_foreign_key "mantenimientos", "materiales", column: "id_materiales", primary_key: "id_material"
    add_foreign_key "mantenimientos", "herramienta", column: "id_herramienta", primary_key: "id_herramienta"
    add_foreign_key "mantenimientos", "insumos", column: "id_insumo", primary_key: "id_insumo"
    
  end
end
