class Materiale < ApplicationRecord
         validates :nombre, :caracteristicas, :existencia, :presence => true
         validates :nombre, :uniqueness => true
end
