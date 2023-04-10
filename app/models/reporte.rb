class Reporte < ApplicationRecord
  has_paper_trail
  validates :fecha, :observaciones, :tipo_problema, :maintenances_id, :presence => true 
   has_one :maintenance, autosave: true
end
