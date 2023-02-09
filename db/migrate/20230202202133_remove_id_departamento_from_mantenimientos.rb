class RemoveIdDepartamentoFromMantenimientos < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :mantenimientos, column: :id_departamento
  end
end
