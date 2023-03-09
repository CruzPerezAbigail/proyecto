class Physical < ApplicationRecord
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         has_many :maintenance
end
