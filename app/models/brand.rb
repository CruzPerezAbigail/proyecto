class Brand < ApplicationRecord
         has_one :equipment
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
end
