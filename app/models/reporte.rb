class Reporte < ApplicationRecord
  validates :fecha, :observaciones, :tipo_problema, :maintenances_id, :presence => true 
   has_one :maintenance, autosave: true
end
