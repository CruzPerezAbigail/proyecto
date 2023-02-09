class CreateDepartaments < ActiveRecord::Migration[7.0]
  def change
    create_table :departaments do |t|
      t.string :nombre
      t.integer :num_equipos
      t.timestamps
    end
  end
end
