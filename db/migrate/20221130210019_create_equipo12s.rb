class CreateEquipo12s < ActiveRecord::Migration[7.0]
  def change
    create_table :equipo12s, :primary_key => :serie, :null => false  do |t|
      
      t.string :tipo
      t.string :modelo
      t.string :serial
      t.string :observaciones
      t.string :ram
      t.string :disco_duro
      t.integer :id_tipo
      t.integer :id_marcas
      t.integer :id_departamentos
      t.integer :id_areas
      t.string :id_licencias
      t.string :estatus
      
    end
      add_foreign_key "equipo12s", "tipos", column: "id_tipo", primary_key: "id"
      add_foreign_key "equipo12s", "marcas", column: "id_marcas", primary_key: "id_marca"
      add_foreign_key "equipo12s", "departamentos", column: "id_departamentos", primary_key: "id_departamento"
      add_foreign_key "equipo12s", "areas", column: "id_areas", primary_key: "id_area"
      add_foreign_key "equipo12s", "licencia", column: "id_licencias", primary_key: "id_licencia"
     
  end
end
