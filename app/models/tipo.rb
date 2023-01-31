class Tipo < ApplicationRecord
         has_one :equipo12

         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
end
