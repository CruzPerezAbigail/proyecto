class Shape < ApplicationRecord
         has_paper_trail
         has_one :equipment
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
        #  def ip_address(timestamp)
        #           version_at(timestamp).meta["ip"]
        #         end
                
        #         def usuario_id(timestamp)
        #           version_at(timestamp).meta["usuario"]
        #         end

        #  registro = Shape.last
        #  ip = registro.paper_trail.version_at(timestamp).meta["ip"]
        #  usuario = registro.paper_trail.version_at(timestamp).meta["usuario"]
         
        #  has_paper_trail meta: { ip: :ip_address, usuario: :usuario_id }
         
end
