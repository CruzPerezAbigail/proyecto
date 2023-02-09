class Physical < ApplicationRecord
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         has_one :maintenance
end
