class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :nombre
      t.string :caracteristica
      t.integer :existencia
      t.string :estatus

      t.timestamps
    end
  end
end
