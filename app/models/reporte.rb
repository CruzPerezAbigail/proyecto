class Reporte < ApplicationRecord
  validates :fecha, :observaciones, :tipo_problema, :id_mantenimiento, :presence => true 

end
