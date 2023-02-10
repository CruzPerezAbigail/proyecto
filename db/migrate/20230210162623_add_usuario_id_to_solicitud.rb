class AddUsuarioIdToSolicitud < ActiveRecord::Migration[7.0]
  def change
    add_reference :solicituds, :usuarios, null: false, foreign_key: true, type: :string
  end
end
