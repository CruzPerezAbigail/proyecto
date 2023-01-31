class Departamento < ApplicationRecord
validates :nombre, :id_area, :presence => true 

validates :nombre , :uniqueness => true

end
