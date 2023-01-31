class CreateDepartamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :departamentos, :primary_key => :id_departamento do |t|
      t.string :nombre
      t.integer :num_equipo
      t.integer :id_area

      t.timestamps
    end
    add_foreign_key "departamentos", "areas", column: "id_area", primary_key: "id_area"
  
  end
end
