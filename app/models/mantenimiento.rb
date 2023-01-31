class Mantenimiento < ActiveRecord::Base
         validates :fecha_inicio, :fecha_fin, :observaciones, :tipo_mantenimiento, :serie, :id_departamento, :rfc, :presence => true
        
         

         


end
