class Equipo12 < ActiveRecord::Base
         Equipo12.order(created_at: :asc)
         validates  :id_marcas, :id_departamentos, :id_tipo, :id_areas, :estatus, :presence => true 
         validates :serial, :uniqueness => true 
         
         
         
         def self.get_mantenimientos
                  self.joins(:mantenimientos).select('equipo12.serie, mantenimientos.serie as registro_mante')
          end 

         
end
