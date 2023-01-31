class CreateSolicituds < ActiveRecord::Migration[7.0]
  def change
  create_table :solicituds, :primary_key => :id_solicitud do |t|
        t.string :area_solicitante
        t.date :fecha
        t.text :descripcion
        t.string :rfc

        t.timestamps
    end
    add_foreign_key "solicituds", "usuarios", column: "rfc", primary_key: "rfc"

    end
  end
