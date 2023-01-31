class Solicitud < ApplicationRecord
       validates :area_solicitante, :fecha, :descripcion , :rfc , :presence => true
end
