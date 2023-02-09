class CreateShapes < ActiveRecord::Migration[7.0]
  def change
    create_table :shapes do |t|
      t.string :nombre
      t.timestamps
    end
  end
end
