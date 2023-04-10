class Brand < ApplicationRecord
         has_paper_trail
         has_one :equipment
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
end
