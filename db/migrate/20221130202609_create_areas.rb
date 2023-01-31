class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas , :primary_key => :id_area do |t|
        t.string :nombre

      t.timestamps
    end
  end
end
