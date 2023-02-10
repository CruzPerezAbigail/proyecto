class Solicitud < ApplicationRecord
       validates :zone_id, :fecha, :descripcion , :usuarios_id , :presence => true
       belongs_to :zone
end
