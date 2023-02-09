class CreateLicences < ActiveRecord::Migration[7.0]
  def change
    create_table :licences do |t|
      t.string :nombre
      t.integer :anio
      t.string :num_licencia
      t.timestamps
    end
  end
end
