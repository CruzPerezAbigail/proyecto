class Solicitud < ApplicationRecord
       has_paper_trail  
       validates :zone_id, :fecha, :descripcion , :usuarios_id , :presence => true
       belongs_to :zone
       

       

       
end
