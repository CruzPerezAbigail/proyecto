class Addfechatoequipo12 < ActiveRecord::Migration[7.0]
  def change
   add_column :equipo12s , :fecharegistro , :date 
  end
end
