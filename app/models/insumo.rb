class Insumo < ApplicationRecord
         validates :nombre, :caracteristicas, :existencia, :estatus , :presence => true
         validates :nombre, :uniqueness => true


         
end
