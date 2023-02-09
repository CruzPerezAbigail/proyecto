class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment, :primary_key => :serie, :type => :string do |t|
      
      t.string :estatus
      t.string :modelo
      t.string :serial
      t.string :observaciones
      t.string :ram
      t.string :disco_duro
      t.date :fecharegistro
      
    end
  end
end
