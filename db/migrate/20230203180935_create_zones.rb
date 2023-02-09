class CreateZones < ActiveRecord::Migration[7.0]
  def change
    create_table :zones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
