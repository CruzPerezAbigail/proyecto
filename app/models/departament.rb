class Departament < ApplicationRecord
         validates :nombre, :num_equipos, :presence => true 

         validates :nombre , :uniqueness => true      
         has_many :zones
end
