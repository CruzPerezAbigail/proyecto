class CreatePhysicals < ActiveRecord::Migration[7.0]
  def change
    create_table :physicals do |t|
      t.string :nombre
      t.string :caracteristicas
      t.integer :existencia
      
      t.timestamps
    end
  end
end
